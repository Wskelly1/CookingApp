# Error Log: FileNotFoundError during Flutter App Initialization

**Date/Time:** 2024-06-03

**Error Message:**
Instance of 'FileNotFoundError'

**Stack Trace:**
```
#0      DotEnv._getEntriesFromFile (package:flutter_dotenv/src/dotenv.dart:172:7)
<asynchronous suspension>
#1      DotEnv.load (package:flutter_dotenv/src/dotenv.dart:124:23)
<asynchronous suspension>
#2      main (package:cookingapp/main.dart:9:5)
<asynchronous suspension>
```

**Context:**
- Occurred during app startup on iOS Simulator using flutter_dotenv to load .env file.
- .env file is present in project root and readable by user.
- .env is gitignored (as recommended), but confirmed present locally.

**Attempted Fixes:**
- Verified .env file exists and is readable.
- Ran `flutter clean`, `flutter pub get`, and `flutter run`.
- Added error handling to main.dart to surface initialization errors.
- Confirmed .env is not excluded from local build.

**Next Steps:**
- Investigate if flutter_dotenv requires .env to be included as an asset for iOS builds.
- If so, add .env to pubspec.yaml under assets and rebuild.

**Notes:**
- This error is common if .env is not bundled with the app or not accessible in the build context, especially on iOS. 