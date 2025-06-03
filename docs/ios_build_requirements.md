# iOS Build Requirements

To build and run this React Native app on iOS, ensure the following requirements are met:

## 1. Xcode
- Install the latest version of Xcode from the Mac App Store.
- Open Xcode at least once to accept the license agreement.
- Ensure Xcode command line tools are installed:
  ```sh
  xcode-select --install
  ```

## 2. CocoaPods
- Install CocoaPods (if not already installed):
  ```sh
  sudo gem install cocoapods
  ```
- Navigate to the `ios` directory and install pods:
  ```sh
  cd ios
  pod install
  cd ..
  ```

## 3. Project Configuration
- Open the project in Xcode using:
  ```sh
  open ios/CookingApp.xcworkspace
  ```
- Select a simulator or connected device.
- Build and run the app (⌘R).

## 4. Additional Notes
- Ensure your Mac is running a supported version of macOS for your Xcode version.
- If you encounter build errors, try cleaning the build folder (⇧⌘K) and reinstalling pods.
- For Apple Silicon (M1/M2), ensure you are using terminal and Xcode in the correct architecture (Rosetta if needed).

---

_Last updated: 2024-06-09_ 