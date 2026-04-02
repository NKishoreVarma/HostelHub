# StudentHub (HostelHub)

A simplified issue reporting and tracking app for college hostels, built with Flutter.
This project is part of **Kalvium Sprint #2: Introduction to Flutter & Dart**.

## 📂 Folder Structure Explanation

This project follows a clean and scalable folder structure:

- **Example**: `lib/`
  - **`main.dart`**: The entry point of the application. It sets up the `MaterialApp`, theme, and loads the initial screen.
  - **`screens/`**: Contains the Visual Interface of the app (pages). Keeping screens separate makes it easier to manage navigation and UI logic as the app grows.
    - `welcome_screen.dart`: The initial landing page of the app.
  - **`widgets/`**: Reusable UI components. This promotes code reusability and consistency across different screens.
    - `action_button.dart`: A custom button widget used in the welcome screen.

**Why this is good for scaling:**
Separating screens and widgets ensures that as we add more features (like Issue Reporting, Maintenance Request forms), our code remains organized. We can reuse buttons, input fields, and other widgets without duplicating code.

## 🚀 How to Run the Project

1.  **Get Dependencies:**
    Open your terminal in the project folder and run:
    ```bash
    flutter pub get
    ```

2.  **Run the App:**
    Ensure an emulator is running or a device is connected, then run:
    ```bash
    flutter run
    ```

## 📱 Welcome UI Explanation

The **Welcome Screen** provides a simple and friendly entry point for users.
- It uses a `Scaffold` with an `AppBar` titled "StudentHub".
- A `Column` widget arranges the content vertically:
  - A friendly "Welcome" text.
  - A relevant icon (Apartment/Hostel).
  - A dynamic "Get Started" button.
- **Interactivity:** The button demonstrates state management. When pressed, it updates its text to "Loading..." and changes color, showcasing how `StatefulWidget` handles user interactions.

## 🧠 Reflection (Sprint Learning)

- **Flutter Widgets:** I learned how to use fundamental widgets like `Scaffold`, `AppBar`, `Column`, `Center`, and `Icon` to build a layout. I also learned about custom widgets to keeping code clean.
- **Dart State Management:** I understood the difference between `StatelessWidget` and `StatefulWidget`. Using `setState()` allowed me to update the UI dynamically (changing button text/color) when the state changed.
- **Future Structure:** By organizing code into `screens` and `widgets` now, it will be much easier to integrate Firebase and add complex features like authentication and database streams in future sprints without cluttering a single file.


## 📸 Demo Screenshot & Setup Verification

### Flutter SDK Installation Status

#### ✅ Completed Setup Components
```
Flutter version 3.24.0 on channel stable
Dart version 3.5.0
DevTools version 2.37.2
Windows Version: Windows 10+ (v10.0.26100.7623)
Visual Studio Build Tools 2019 (for Windows development)
Google Chrome 144.0.7559.133 (for web development)
Microsoft Edge 144.0.3719.92 (for web development)
```

#### Current Device Support
- ✅ **Windows Desktop** - Fully operational
- ✅ **Chrome Web Browser** - Fully operational
- ✅ **Microsoft Edge** - Fully operational
- ⏳ **Android Emulator** - Pending Android Studio installation
- ⏳ **iOS Simulator** - Requires macOS (not available on Windows)
- ⏳ **Physical Android Device** - Requires Android SDK

#### Flutter Doctor Output (as of February 9, 2026)
```
[✓] Flutter (Channel stable, 3.24.0)
    • Flutter at C:\src\flutter
    • Framework revision 80c2e84975
    • Engine revision b8800d88be
    • Dart version 3.5.0

[✓] Windows Version (10.0.26100.7623)

[✓] Chrome - develop for the web
    • Chrome at C:\Program Files\Google\Chrome\Application\chrome.exe

[✓] Visual Studio - develop Windows apps
    • Visual Studio Build Tools 2019

[✓] Connected device (3 available)
    • Windows (desktop) • windows • windows-x64
    • Chrome (web) • chrome • web-javascript
    • Edge (web) • edge • web-javascript
```

### Running StudentHub on Different Platforms

#### **Web (Chrome) - TESTED & WORKING ✅**
```bash
flutter run -d chrome
```

#### **Windows Desktop - READY**
```bash
flutter run -d windows
```
*Requires: Windows Developer Mode enabled*

#### **Android Emulator - REQUIRES SETUP**
```bash
# After installing Android Studio:
flutter run
```
*See SETUP_GUIDE.md for detailed Android Studio installation instructions*

### Firebase Integration Status
- ✅ Firebase dependencies added (firebase_core, firebase_auth, cloud_firestore)
- ✅ Authentication service created with signup/login/logout
- ✅ Firestore service created with CRUD operations
- ✅ UI screens created (login, signup, dashboard)
- ⏳ Firebase credentials require configuration
- ⏳ Firebase project setup required (see PULL_REQUEST_TEMPLATE.md)

---

## 📝 PR & Video Guidance

### suggested Commit Message
`feat: implement welcome screen with state management and folder structure`

### Suggested PR Title
`[Sprint-2] Flutter & Dart Basics – StudentHub`

### 🎥 Video Script (1-2 minutes)

**Introduction:**
"Hi, I'm [Your Name]. This is my submission for Kalvium Sprint 2, the StudentHub app."

**Folder Structure:**
"First, looking at the code structure:
- I have `main.dart` as the entry point with Firebase initialization.
- I've separated my UI into a `screens` folder, where I have the `WelcomeScreen`, `LoginScreen`, `SignupScreen`, and `DashboardScreen`.
- I also have a `services` folder for Firebase authentication and Firestore operations.
- This structure helps in scaling the app for future features."

**Authentication Features:**
"I've implemented Firebase authentication with:
- Signup with email, password, and full name
- Login with email and password
- Real-time user profile management
- Logout functionality with secure session handling"

**Firestore Integration:**
"The app also includes Firestore integration for:
- Storing user profiles in the 'users' collection
- Real-time data streaming using StreamBuilder
- CRUD operations for user data
- Automatic data synchronization"

**App Demo:**
"Now running the app on Chrome:
- You see the 'StudentHub' AppBar and the Welcome screen with Login and Signup buttons.
- Clicking Login takes you to the login form with email and password fields.
- Clicking Signup takes you to the registration form where you can create a new account.
- After successful login/signup, you're taken to the Dashboard with a user welcome card and data management features."

**Flutter Doctor Status:**
"Flutter 3.24.0 is installed with:
- Dart SDK 3.5.0
- Web development support via Chrome and Edge
- Windows desktop support
- Ready for Android development after installing Android Studio"

**Conclusion:**
"That's the StudentHub app with Firebase integration. Thank you!"

