# StudentHub Flutter App - Complete Setup Guide

## Current Installation Status

### ✅ Completed
- **Flutter SDK**: v3.24.0 (Stable Channel)
- **Dart SDK**: v3.5.0
- **DevTools**: v2.37.2
- **Windows Version**: Windows 10+ (v10.0.26100.7623)
- **Windows Development**: Visual Studio Build Tools 2019
- **Web Development**: Google Chrome 144.0.7559.133, Microsoft Edge 144.0.3719.92
- **Network**: All resources available
- **Devices**: Windows Desktop, Chrome, Edge browsers

### ❌ Remaining Setup
- **Android Studio**: Not installed
- **Android SDK**: Not configured
- **Android Emulator**: Not set up

---

## Part 1: Flutter SDK Installation (COMPLETED)

### What Was Done
1. Downloaded Flutter SDK 3.24.0 from Google's official servers
2. Extracted to `C:\src\flutter`
3. Added to system PATH: `C:\src\flutter\bin`
4. Verified installation with `flutter doctor`

### Verify Installation
```bash
C:\src\flutter\bin\flutter.bat doctor
```

**Output:**
```
Flutter version 3.24.0 • Channel stable
Framework revision 80c2e84975
Engine revision b8800d88be
Dart version 3.5.0
DevTools version 2.37.2
```

---

## Part 2: Android Studio Installation (MANUAL)

Follow these steps to install Android Studio:

### Step 1: Download Android Studio
1. Visit: https://developer.android.com/studio
2. Click **Download Android Studio** (latest version)
3. Accept terms and download the Windows installer
4. File size: ~1.2 GB

### Step 2: Install Android Studio
1. Run the downloaded `.exe` file
2. Choose installation path (default: `C:\Program Files\Android\Android Studio`)
3. Select components to install:
   - ✅ Android SDK
   - ✅ Android SDK Platform
   - ✅ Android Virtual Device
   - ✅ Performance (GPU) Driver
4. Complete the installation
5. Launch Android Studio

### Step 3: Configure Flutter & Dart Plugins (IMPORTANT)
1. Open Android Studio
2. Go to **File** → **Settings** (or **Android Studio** → **Preferences** on macOS)
3. Navigate to **Plugins**
4. Search for "Flutter"
5. Click **Install** (this will also install Dart plugin)
6. Restart Android Studio

### Step 4: Accept Android Licenses
Open PowerShell and run:
```bash
C:\src\flutter\bin\flutter.bat doctor --android-licenses
```
Type **y** (yes) for all prompts to accept Android SDK licenses.

---

## Part 3: Android Virtual Device (Emulator) Setup

### Method A: Using Android Studio (Recommended)

#### Step 1: Open AVD Manager
1. Launch Android Studio
2. Click **Tools** → **Device Manager** (or **AVD Manager**)
3. Click **Create Virtual Device**

#### Step 2: Choose Device
- **Select a device definition**: Choose "Pixel 6" or any recent device
- Click **Next**

#### Step 3: Select System Image
- **API Level**: Select API 33 (Android 13) or higher
- **ABI**: Select your architecture:
  - If you have an Intel processor: x86_64
  - If you have an ARM processor: arm64-v8a
  - Default recommendation: x86_64 (faster for emulation)
- Click **Next**

#### Step 4: Verify Configuration
- Review the AVD name (default is fine)
- Click **Finish**

#### Step 5: Start the Emulator
1. In Device Manager, find your created device
2. Click the **Play** (▶) button to start it
3. Wait 2-3 minutes for the emulator to fully boot
4. You should see an Android home screen

### Method B: Command Line
```bash
C:\src\flutter\bin\flutter.bat emulators
```
This will list available emulators.

---

## Part 4: Verify Android Setup

Once Android Studio is installed and emulator is running, verify with:

```bash
C:\src\flutter\bin\flutter.bat doctor -v
```

You should see:
```
✓ Flutter
✓ Windows Version
✓ Visual Studio
✓ Chrome
✓ Android toolchain
✓ Android Studio
✓ Connected device (Emulator)
✓ Network resources
```

---

## Part 5: Running StudentHub on Android Emulator

### Step 1: Start the Emulator
```bash
# List available emulators
C:\src\flutter\bin\flutter.bat emulators

# Start an emulator (replace with your emulator name)
C:\src\flutter\bin\flutter.bat emulators --launch Pixel_6_API_33
```

### Step 2: Verify Device Connection
```bash
C:\src\flutter\bin\flutter.bat devices
```

You should see your emulator listed.

### Step 3: Run the App
```bash
cd C:\Users\saiab\OneDrive\Documents\paint canvas\hostel hub\HostelHub\student_hub

C:\src\flutter\bin\flutter.bat run
```

The app will build and launch on your Android emulator.

### Step 4: Test Firebase Features
1. **Signup**: Create a new account (Currently will fail without Firebase config)
2. **Login**: Try logging in
3. **Dashboard**: View the data management screen

---

## Firebase Configuration for Android

Once you have the emulator running, you'll need to configure Firebase:

### Step 1: Create Firebase Project
1. Go to https://console.firebase.google.com
2. Create a new project named "StudentHub"
3. Add an Android app:
   - Package name: `com.example.student_hub`
4. Download `google-services.json`

### Step 2: Place Configuration File
```
Copy google-services.json to:
student_hub/android/app/
```

### Step 3: Update firebase_options.dart
In `lib/firebase_options.dart`, replace placeholder values with your Firebase credentials.

### Step 4: Re-run the App
```bash
C:\src\flutter\bin\flutter.bat run -d emulator-5554
```

---

## Setup Verification Checklist

After completing all steps, you should have:

- [ ] Flutter SDK 3.24.0 installed at `C:\src\flutter`
- [ ] Dart SDK 3.5.0 working
- [ ] Android Studio installed
- [ ] Android SDK installed
- [ ] Android Virtual Device (emulator) created
- [ ] Emulator launching successfully
- [ ] `flutter doctor` showing all checks passed
- [ ] StudentHub app running on Android emulator
- [ ] Firebase authentication screens visible
- [ ] Able to test signup/login flow (with Firebase config)

---

## Troubleshooting

### Problem: "android-sdk-windows is not installed"
**Solution**: 
1. Open Android Studio
2. Go to File → Settings → Appearance & Behavior → System Settings → Android SDK
3. Click Install SDK

### Problem: Emulator won't start
**Solution**:
1. Ensure Virtualization is enabled in BIOS
2. Close other heavy applications
3. Try starting emulator from Android Studio GUI instead of CLI

### Problem: "Permission denied" errors
**Solution**:
```bash
C:\src\flutter\bin\flutter.bat config --android-sdk C:\Android\sdk
```

### Problem: Gradle build fails
**Solution**:
```bash
cd student_hub
C:\src\flutter\bin\flutter.bat pub get
C:\src\flutter\bin\flutter.bat clean
C:\src\flutter\bin\flutter.bat run
```

---

## Useful Commands

```bash
# Check Flutter status
C:\src\flutter\bin\flutter.bat doctor

# List all connected devices
C:\src\flutter\bin\flutter.bat devices

# List available emulators
C:\src\flutter\bin\flutter.bat emulators

# Run on specific device
C:\src\flutter\bin\flutter.bat run -d emulator-5554

# Run in web browser
C:\src\flutter\bin\flutter.bat run -d chrome

# Run on Windows desktop
C:\src\flutter\bin\flutter.bat run -d windows

# Clean and rebuild
C:\src\flutter\bin\flutter.bat clean
C:\src\flutter\bin\flutter.bat pub get
C:\src\flutter\bin\flutter.bat run
```

---

## Current Environment Details

```
OS: Windows 10 (Build 26100.7623)
Flutter: 3.24.0 (stable)
Dart: 3.5.0
DevTools: 2.37.2
Visual Studio: 2019 BuildTools v16.11
Chrome: 144.0.7559.133
Edge: 144.0.3719.92
```

---

## Next Steps

1. **Install Android Studio** using the manual steps above
2. **Create Android emulator** (Pixel 6, API 33+)
3. **Run StudentHub** on the emulator
4. **Configure Firebase** with your project credentials
5. **Test authentication flow** on Android device/emulator
6. **Take screenshots** of the running app

---

## Additional Resources

- [Flutter Official Website](https://flutter.dev)
- [Android Studio Installation Guide](https://developer.android.com/studio/install)
- [Flutter Android Setup](https://flutter.dev/docs/get-started/install/windows#android-setup)
- [Firebase Setup for Flutter](https://firebase.flutter.dev)
- [Android Virtual Device Creation](https://developer.android.com/studio/run/managing-avds)

---

**Documentation Generated**: February 9, 2026  
**Flutter Version**: 3.24.0  
**Status**: Ready for Android development setup
