# SheAware 🌸

**SheAware** is a premium, privacy-focused mobile health application designed to raise awareness about uterine tumours and cancers among women in the United Kingdom, with a specific focus on South Asian communities. It bridges the gap between symptom onset and medical consultation through education, anonymous tracking, and AI-powered risk awareness.

---

## 🌟 Main Features

- **📚 Education Hub**: Access verified health information sourced from peer-reviewed literature, NHS guidance, and World Health Organization (WHO) reports.
- **📝 Symptom Tracker**: Privately log and monitor uterine health indicators, including symptom severity, duration, pain intensity, and mood patterns over time.
- **🤖 AI Risk Awareness Scoring**: A non-diagnostic scoring mechanism powered by a deterministic heuristic algorithm and **Google Gemini AI**, providing actionable recommendations.
- **🆘 Support Resources**: A curated directory of direct contacts for NHS helplines, cancer charities (like Cancer Research UK), and emergency services.
- **🔒 Privacy-First Design**: Completely anonymous device-based identity model. No personally identifiable information (PII) like names or emails is ever collected, ensuring full compliance with UK GDPR.

---

## 🛠️ Technology Stack

### Frontend
- **Framework**: [Flutter](https://flutter.dev/) (Dart)
- **State Management**: Riverpod
- **Networking**: Dio
- **Architecture**: Clean Architecture (Domain, Data, Presentation layers)

### Backend
- **Framework**: [Django REST Framework](https://www.django-rest-framework.org/) (Python)
- **Authentication**: JWT-based stateless device authentication (Simple JWT)
- **AI Integration**: Google Gemini API (`gemini-3-pro-preview`)
- **Database**: SQLite (Development) / PostgreSQL (Production ready)

---

## 🚀 How to Run

### 1. Backend Setup (Django)

1. Navigate to the backend directory:
   ```bash
   cd backend_django/she_aware
   ```
2. Create and activate a virtual environment:
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows use `venv\Scripts\activate`
   ```
3. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```
4. Run migrations:
   ```bash
   python manage.py migrate
   ```
5. Start the development server:
   ```bash
   python manage.py runserver
   ```
   *The API will be available at `http://127.0.0.1:8000/`*

### 2. Frontend Setup (Flutter)

1. Navigate to the frontend directory:
   ```bash
   cd frontend_flutter/she_aware
   ```
2. Fetch dependencies:
   ```bash
   flutter pub get
   ```
3. Run the application:
   ```bash
   flutter run
   ```
   *Ensure you have an emulator running or a physical device connected.*

---

## 📋 Important Information

- **Non-Diagnostic Tool**: SheAware is an awareness platform, not a medical diagnostic tool. It encourages users to seek professional medical advice.
- **Anonymous Identity**: Users are identified by a unique device UUID generated on the first launch.
- **Environment Variables**: Ensure you have a `.env` file in the backend root if you wish to use the Google Gemini AI features (requires `GEMINI_API_KEY`).

---

## 📂 Project Structure

```text
.
├── backend_django/      # Python Django REST API
│   └── she_aware/       # Core backend logic & apps
├── frontend_flutter/    # Dart/Flutter Mobile App
│   └── she_aware/       # UI, state management & clean architecture
└── .gitignore           # Root git ignore configuration
```

---
*Developed as part of the BSc (Hons) Computer Science Final Project at the University of Westminster.*
