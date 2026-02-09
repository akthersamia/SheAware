from .gemini import GeminiService
from apps.symptoms.models import RiskScore

class ScoringService:
    def __init__(self):
        self.gemini = GeminiService()

    def calculate_score(self, entry):
        # Prepare metadata (stub for now, can extract from User profile if exists)
        metadata = {} 
        
        # Try Gemini
        gemini_result = self.gemini.get_risk_score(entry, metadata)
        
        if gemini_result:
            return self._save_score(entry, gemini_result, model_name='gemini-pro')
        
        # Fallback
        heuristic_result = self._calculate_heuristic(entry)
        return self._save_score(entry, heuristic_result, model_name='heuristic-v1')

    def _calculate_heuristic(self, entry):
        # Heuristic Logic
        # score = min(100, sum(severity * 5) + duration_bonus)
        total_score = 0
        flags = []
        explanation_parts = []

        symptoms = entry.symptoms # list of dicts
        # Example structure: [{"symptom_id": 1, "severity": 3, "duration_value": 7, "duration_unit": "days", "name": "bleeding"}]
        # Assuming we might have names or IDs. Spec implies structure.
        
        for s in symptoms:
            severity = s.get('severity', 0)
            duration_val = s.get('duration_value', 0)
            duration_unit = s.get('duration_unit', 'days')
            
            # Basic weight: severity * 5
            total_score += (severity * 5)
            
            # Duration penalty
            days = duration_val
            if duration_unit == 'weeks':
                days *= 7
            elif duration_unit == 'hours':
                days /= 24.0
            
            if days > 14:
                total_score += 10
            
            if s.get('name') == 'abnormal_bleeding' and severity >= 3 and days > 7:
                 flags.append("seek_gp_soon")
                 explanation_parts.append("Persistent abnormal bleeding detected.")

        score = min(100, total_score)
        
        # Category
        if score < 25:
            category = "Low"
            advice = "Routine monitoring."
        elif score < 50:
            category = "Moderate"
            advice = "Monitor closely."
        elif score < 75:
            category = "Elevated"
            advice = "Consider consulting a GP."
        else:
            category = "High"
            advice = "Seek medical advice promptly."

        explanation = " ".join(explanation_parts) if explanation_parts else advice

        return {
            "score": score,
            "category": category,
            "flags": flags,
            "explanation": explanation
        }

    def _save_score(self, entry, result, model_name):
        return RiskScore.objects.create(
            entry=entry,
            score=result['score'],
            category=result['category'],
            flags=result.get('flags', []),
            explanation=result.get('explanation', ''),
            model=model_name,
            response_payload=result
        )
