# Assignment 4 – Data Storage in Flutter Using Firebase 🔥

## ✅ Requirements Covered

| Requirement | Status |
|---|---|
| 1. Firebase Setup (connect & initialize) | ✅ |
| 2. Store Data (Name + Email form → Firebase) | ✅ |
| 3. Retrieve Data (read & display in list) | ✅ |
| 4. Basic Data Management (Update + Delete) | ✅ |
| 5. Personal Enhancement (UI colors, validation, success messages) | ✅ |

---

## 📁 Project Structure

```
lib/
├── main.dart                    # Firebase initialization
├── firebase_options.dart        # Firebase config (replace with yours)
├── models/
│   └── user_model.dart          # MVC Model - toMap() / fromMap()
├── services/
│   └── firestore_service.dart   # add / get / update / delete
└── screens/
    ├── home_screen.dart         # List users + delete + initState()
    ├── add_user_screen.dart     # Form + save to Firebase
    └── edit_user_screen.dart    # Update existing user
```

---

## 🚀 Setup Steps

### 1. Create a Firebase Project
1. Go to [https://console.firebase.google.com](https://console.firebase.google.com)
2. Click **Add project** → follow the wizard
3. Go to **Firestore Database** → Create database → Start in **test mode**

### 2. Connect Flutter to Firebase

```bash
# Install FlutterFire CLI
dart pub global activate flutterfire_cli

# In your project folder:
flutterfire configure
```

This automatically replaces `firebase_options.dart` with your real credentials.

### 3. Add google-services.json (Android)
- Download from Firebase Console → Project Settings → Android app
- Place it in `android/app/google-services.json`

### 4. Run the app

```bash
flutter pub get
flutter run
```

---

## 📌 Key Concepts Used (from Chapter 6)

- **Firebase initialization** in `main.dart` using `Firebase.initializeApp()`
- **Firestore instance** created in `FirestoreService`
- **MVC Pattern**: `UserModel` with `toMap()` and named constructor `fromMap()`
- **Add()**: `collection.add(map)` to store data
- **get()**: `collection.get()` → `QuerySnapshot` → `List<UserModel>`
- **update()**: `doc(id).update(map)` to update existing record
- **delete()**: `doc(id).delete()` to remove a record
- **initState()**: Load data before UI builds in `HomeScreen`

---

## 📸 Screenshots Needed for Submission
1. Firebase Console → Firestore showing stored documents
2. App showing the list of users
3. Add user form with validation
4. Edit/Delete actions working
