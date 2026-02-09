# SheAware
This project is developed as part of the 6COSC023W – Computer Science Final Project at the University of Westminster.  Student ID: 2012624
My prototype link is attached below
https://github.com/akthersamia/SheAware/releases/tag/v1.0
# 🌸 SheAware – AI-Powered Women’s Health Awareness System

SheAware is a full-stack mobile health application developed as a Final Year Project.  
The system allows users to track gynecological symptoms, receive AI-based risk assessments, access educational content, schedule reminders, and find support resources.

The project consists of:

-  Flutter Mobile Application (Frontend)
-  Django REST Framework Backend
-  AI Integration using Google Gemini

---

# 🛠 Technologies Used

## Frontend
- Flutter Framework (3.8+)
- Dart Programming Language
- Riverpod (State Management)
- Dio (HTTP Networking)
- Freezed & JSON Serializable (Code Generation)
- GetIt (Dependency Injection)
- SharedPreferences (Local Storage)

## Backend
- Django 5+
- Django REST Framework
- JWT Authentication (Simple JWT)
- SQLite (Development Database)
- Google Generative AI (Gemini API)
- Python 3.12+

## Development Tools
- Android Studio (Flutter SDK & Emulator)
- Visual Studio Code
- GitHub (Version Control)
- Figma (UI/UX Design)

---

# 💻 System Requirements

To run this project locally, you need:

- Flutter SDK (3.8 or higher)
- Python 3.12+
- Android Studio (with Android Emulator)
- Dart SDK (included with Flutter)
- pip (Python package manager)
- Internet connection (required for AI risk scoring)

---

#  Installation & Running the Project

The backend must be running before starting the Flutter application.

---

## 🔹 Steps  – Clone Repository

```bash
git clone https://github.com/akthersamia/SheAware.git
cd SheAware
🔹 Step 2 – Backend Setup (Django API)
Navigate to backend folder:

cd backend_django
Create Virtual Environment
python -m venv venv
Activate:

Mac/Linux:

source venv/bin/activate
Windows:

venv\Scripts\activate
Install Dependencies
pip install -r requirements.txt
Apply Database Migrations
python manage.py migrate
**Run Backend Server
python manage.py runserver
Backend will run at:

http://127.0.0.1:8000/v1/
🔹 Step 3 – Frontend Setup (Flutter App)
Go back to project root:

cd ..#If the folder is downloaded from zip cd command to select the folder from the downloaded location.
cd frontend_flutter
Install Dependencies
flutter pub get
step 4:
To run a Flutter App in vs code from the terminal
flutter run
if you want to see available devices
flutter devices
And if you need to start an Android emulator manually:
flutter emulators
flutter emulators --launch <emulator_id>
Then run again:
flutter run
if the code does not run follow the steps below and try the step 4 again at the end
Generate Required Files
flutter pub run build_runner build --delete-conflicting-outputs
🔹 Step 5 – Configure API Base URL
Open:

frontend_flutter/lib/di/network_module.dart
Set:

For Android Emulator:

const baseUrl = 'http://10.0.2.2:8000/v1/';
For iOS Simulator:

const baseUrl = 'http://localhost:8000/v1/';
