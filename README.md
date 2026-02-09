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

## 🔹 Step 1 – Clone Repository

```bash
git clone https://github.com/your-username/sheaware.git
cd sheaware
Step 2 – Backend Setup (Django API)

Navigate to backend folder:

cd she_aware

Create Virtual Environment
python -m venv venv


Activate environment:

Mac/Linux:

source venv/bin/activate


Windows:

venv\Scripts\activate

Install Dependencies
pip install -r requirements.txt

Configure Environment Variables

Create a .env file in the backend root directory:

SECRET_KEY=your_secret_key
DEBUG=True
ALLOWED_HOSTS=127.0.0.1,localhost
GEMINI_API_KEY=your_gemini_api_key


⚠️ GEMINI_API_KEY is required for AI risk scoring.

Apply Database Migrations
python manage.py migrate

Create Superuser (Optional)
python manage.py createsuperuser

Run Backend Server
python manage.py runserver


Backend URL:

http://127.0.0.1:8000/v1/


Admin Panel:

http://127.0.0.1:8000/admin/

🔹 Step 3 – Frontend Setup (Flutter App)

Navigate to Flutter project folder:

cd sheaware_flutter

Install Dependencies
flutter pub get

Generate Required Files
flutter pub run build_runner build --delete-conflicting-outputs

🔹 Step 4 – Configure API Base URL

Open:

lib/di/network_module.dart


Set base URL:

For Android Emulator:

const baseUrl = 'http://10.0.2.2:8000/v1/';


For iOS Simulator:

const baseUrl = 'http://localhost:8000/v1/';

🔹 Step 5 – Start Emulator

Open Android Studio and run an Android Emulator

OR use:

flutter emulators --launch emulator_name

🔹 Step 6 – Run Application
flutter run


The application will automatically register the device and connect to the backend API.
