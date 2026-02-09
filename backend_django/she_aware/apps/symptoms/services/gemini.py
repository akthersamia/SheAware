import google.generativeai as genai
import os
import json
import logging

logger = logging.getLogger(__name__)

class GeminiService:
    def __init__(self):
        self.api_key = os.getenv('GEMINI_API_KEY')
        if self.api_key:
            genai.configure(api_key=self.api_key)
            self.model = genai.GenerativeModel('gemini-3-pro-preview')
        else:
            self.model = None
            logger.warning("GEMINI_API_KEY not set. Using fallback heuristic.")

    def get_risk_score(self, symptom_entry, user_metadata=None):
        """
        Generates risk score from symptom entry using Gemini.
        Returns dict: {score, category, flags, explanation}
        """
        if not self.model:
            return None

        prompt = self._build_prompt(symptom_entry, user_metadata)
        
        try:
            response = self.model.generate_content(prompt)
            # Extracted text might be wrapped in ```json ... ```
            text = response.text
            clean_text = self._clean_json(text)
            data = json.loads(clean_text)
            # Validate schema
            if self._validate_response(data):
                return data
            else:
                logger.error("Invalid schema from Gemini: %s", data)
                return None
        except Exception as e:
            logger.error("Gemini API error: %s", e)
            return None

    def _build_prompt(self, entry, metadata):
        # Construct the prompt as per spec
        symptoms_text = json.dumps(entry.symptoms)
        
        return f"""
        You are a medical-awareness assistant. You MUST NOT provide a diagnosis. 
        You MUST return ONLY JSON with fields: score (0-100), category (Low/Moderate/Elevated/High), flags (array), explanation (max 40 words).

        Patient data JSON:
        {{
            "symptoms": {symptoms_text},
            "metadata": {json.dumps(metadata or {})}
        }}

        Rules:
        - Score should increase with severity (severity 1-5 mapped to weights: 5->25, 4->20, 3->15, 2->10, 1->5).
        - If abnormal_bleeding severity >=3 and duration >7 days, include flag "seek_gp_soon".
        - NEVER include medical diagnoses. Provide only advice to consult GP when needed.

        Return only JSON.
        """

    def _clean_json(self, text):
        if "```json" in text:
            text = text.split("```json")[1].split("```")[0]
        elif "```" in text:
            text = text.split("```")[1].split("```")[0]
        return text.strip()

    def _validate_response(self, data):
        required = ['score', 'category', 'flags', 'explanation']
        return all(key in data for key in required) and isinstance(data['score'], int)
