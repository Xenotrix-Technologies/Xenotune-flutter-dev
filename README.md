
# 🎵 Xenotune – AI-Powered Mood-Based Sound Experience

Welcome to the official repository for **Xenotune**, an intelligent ambient sound and music application developed by **Xenotrix Technologies**. Xenotune uses AI to understand user moods and generate customized soundscapes for focus, relaxation, and productivity.

---

## 🚀 Project Highlights

- 🎧 **AI-Powered Soundscapes** based on user mood
- 🤖 Mood/Mode detection using trained models
- 🌐 Django-powered REST API backend
- 📱 Flutter-based mobile frontend
- 🔐 Subscription system with Pro features
- 📊 Post-launch analytics & performance tracking

---

## 📁 Folder Structure

```bash
xenotune/
├── backend/                  # Django Backend
│   ├── xenotune_api/        # Core Django project
│   ├── mood_ai/             # AI mood detection module
│   ├── auth/                # Authentication (login/OTP)
│   ├── soundengine/         # AI audio generation
│   └── requirements.txt     # Backend dependencies
│
├── frontend/                # Flutter Frontend
│   ├── lib/
│   │   ├── Presentation/    # Home, Explore, Player, etc.
│   │   ├── Domain/          # App data models
│   │   ├── Infrastructure/  # API & Functions
│   │   ├── Application/     # state management
│   │   └── main.dart        # App entry point
│   └── pubspec.yaml         # Flutter dependencies
│
├── assets/                  # Audio samples, UI images
├── docs/                    # Wireframes, workflow PDFs
├── .gitignore
├── README.md
└── LICENSE
```

---

## 🛠️ Tech Stack

| Layer        | Technology        |
|--------------|-------------------|
| Frontend     | Flutter           |
| Backend      | Django            |
| AI / ML      | Python (custom models, possibly TensorFlow/PyTorch) |
| Deployment   | Render / Railway (for backend) |
| Storage      | Firebase / PostgreSQL) |

---

## 🧭 Project Workflow

1. **Research & Planning**
2. **Wireframing & Design**
3. **Frontend & Backend Development**
4. **AI Integration (Mood Detection & Sound Gen)**
5. **Testing & QA**
6. **Deployment**
7. **Post-launch Updates**

---

## 💡 Key Features

- Real-time mood analysis
- AI-generated ambient soundscapes
- Pro-only premium experiences
- Clean, minimal UI
- Cross-platform mobile support

---

## 🧪 Getting Started

### Backend

```bash
cd backend
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
python manage.py runserver
```

### Frontend

```bash
cd frontend
flutter pub get
flutter run
```

---

## 📌 Contribution

We welcome contributors! Please open issues and pull requests in this repository.

---

## 📝 License

This project is licensed under the MIT License – see the [LICENSE](LICENSE) file for details.

---

## 🌐 Company

Built with ❤️ by **Xenotrix Technologies**, Kerala, India  
[Website](https://xenotrix-technologies.github.io/XenoTUNE/)
