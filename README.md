# Blog App - Frontend

This repository contains the **Flutter frontend** for the Blog App. The app interacts with the backend API (Django) to fetch and display blog posts and their details.

## Features

- **Blog List Page**: Displays a list of blogs with titles and descriptions.
- **Blog Detail Page**: Shows the full content of a selected blog post.
- **Thematic Design**: Black and wheat color scheme for a sleek look.
- **Submodule Integration**: Contains the backend (Django) as a Git submodule for seamless development.

---

## Getting Started
This project is a starting point for a Flutter application.

The few resources I used to get started:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

### Prerequisites

- Flutter SDK installed on your system.
- An active backend (Django) running on a server or locally.

### Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/YourUsername/Frontend-Repo.git
   cd Frontend-Repo
2. Initialize and update the backend submodule:
   ```bash
   git submodule update --init --recursive
   ```

3. Navigate to the Flutter project:
   ```bash
   cd frontend
   ```

4. Install dependencies:
   ```bash
   flutter pub get
   ```

5. Run the app:
   ```bash
   flutter run
   ```

---

## Folder Structure

```
frontend/
├── lib/
│   ├── main.dart              # Entry point of the app
│   ├── models/                # Blog model
│   ├── services/              # API service for backend interaction
│   ├── pages/                 # Blog list and detail pages
│   └── widgets/               # Reusable UI components
├── pubspec.yaml               # Dependencies for the project
└── ...
backend/                       # Submodule containing the Django backend
```

---

## Backend (Django) Submodule

The backend is included as a submodule in the `backend/` folder. 

### Updating the Backend

To pull the latest updates for the backend:

```bash
cd backend
git pull origin main
```

### Making Changes to the Backend

1. Navigate to the `backend` folder:
   ```bash
   cd backend
   ```

2. Make your changes, commit, and push to the backend repository:
   ```bash
   git add .
   git commit -m "Your changes"
   git push origin main
   ```

3. Return to the Flutter repository:
   ```bash
   cd ..
   ```

---

## Contributions

Contributions are welcome! Please open an issue or submit a pull request.

---

## License

This project is licensed under the MIT License.
```

