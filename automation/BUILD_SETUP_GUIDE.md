# 🏗️ App Build Setup for Automation Testing

## Current Issue
The automation tests are failing because the app builds don't exist at the specified paths:
- **iOS**: `/Volumes/Data/innovent/suliit/build/ios/ipa/Runner.app` ❌
- **Android**: `/Volumes/Data/innovent/suliit/build/app/outputs/flutter-apk/app-debug.apk` ❌

## 📱 Building the Apps

### For Android Testing
```bash
# Navigate to project root
cd /Volumes/Data/innovent/suliit

# Build debug APK
flutter build apk --debug

# Verify build location
ls -la build/app/outputs/flutter-apk/app-debug.apk
```

### For iOS Testing (Simulator)
```bash
# Navigate to project root
cd /Volumes/Data/innovent/suliit

# Build for iOS Simulator
flutter build ios --simulator --debug

# The app will be at: build/ios/iphonesimulator/Runner.app
ls -la build/ios/iphonesimulator/Runner.app
```

### For iOS Testing (Device)
```bash
# Navigate to project root
cd /Volumes/Data/innovent/suliit

# Build for iOS Device (requires signing)
flutter build ios --debug

# The app will be at: build/ios/iphoneos/Runner.app
ls -la build/ios/iphoneos/Runner.app
```

## 🔧 Configuration Updates Needed

### Option 1: Use Bundle ID (Recommended for iOS)
Update `wdio.ios.conf.js` to use bundle ID instead of app path:

```javascript
capabilities: [{
    platformName: 'iOS',
    'appium:automationName': 'XCUITest', // Changed from Flutter
    'appium:deviceName': 'iPhone 16 Pro',
    'appium:platformVersion': '18.4',
    // Remove app path, use bundle ID
    'appium:bundleId': 'ua.suliit.com', // Your actual bundle ID
    // ... rest of config
}]
```

### Option 2: Update App Paths
After building the apps, update the paths in config files:

**Android** (`wdio.android.conf.js`):
```javascript
'appium:app': path.resolve('../build/app/outputs/flutter-apk/app-debug.apk'),
```

**iOS** (`wdio.ios.conf.js`):
```javascript
// For Simulator
'appium:app': path.resolve('../build/ios/iphonesimulator/Runner.app'),

// For Device
'appium:app': path.resolve('../build/ios/iphoneos/Runner.app'),
```

## 🎯 Quick Fix Commands

### 1. Build Both Platforms
```bash
cd /Volumes/Data/innovent/suliit

# Build Android
flutter build apk --debug

# Build iOS for Simulator
flutter build ios --simulator --debug
```

### 2. Update iOS Config to Use Bundle ID
```bash
cd automation

# This will be done automatically in the next step
```

### 3. Test Configuration
```bash
cd automation

# Test Android (after building APK)
npm run test:android

# Test iOS (after updating config)
npm run test:ios
```

## 📋 Pre-requisites Checklist

### For Android Testing
- [ ] Android SDK installed
- [ ] Android emulator running OR physical device connected
- [ ] `adb devices` shows connected device
- [ ] APK built successfully

### For iOS Testing
- [ ] Xcode installed (macOS only)
- [ ] iOS Simulator running OR physical device connected
- [ ] Development team configured (for device testing)
- [ ] App built successfully

### For Flutter Driver
- [ ] Flutter SDK installed
- [ ] `flutter doctor` shows no critical issues
- [ ] App has Flutter Driver integration

## 🚀 Recommended Approach

### Phase 1: Bundle ID Testing (Fastest)
1. **Update iOS config** to use bundle ID instead of app path
2. **Install app manually** on simulator/device
3. **Run tests** using installed app

### Phase 2: Full Build Integration
1. **Set up build scripts** to automate app building
2. **Update configurations** with correct build paths
3. **Integrate with CI/CD** pipeline

## 🛠️ Build Automation Scripts

Create these scripts in the project root:

### `build_for_testing.sh`
```bash
#!/bin/bash
echo "🏗️ Building apps for automation testing..."

# Build Android
echo "📱 Building Android APK..."
flutter build apk --debug

# Build iOS
echo "🍎 Building iOS app..."
flutter build ios --simulator --debug

echo "✅ Build completed!"
echo "Android APK: build/app/outputs/flutter-apk/app-debug.apk"
echo "iOS App: build/ios/iphonesimulator/Runner.app"
```

### Integration with npm scripts
Add to `automation/package.json`:
```json
{
  "scripts": {
    "build:apps": "cd .. && ./build_for_testing.sh",
    "test:android:full": "npm run build:apps && npm run test:android",
    "test:ios:full": "npm run build:apps && npm run test:ios"
  }
}
```

## 📝 Next Steps

1. **Choose your approach** (Bundle ID vs App Path)
2. **Build the required apps** using Flutter commands
3. **Update configurations** accordingly
4. **Test the setup** with a simple test run

---

**Ready to get your automation tests running!** 🚀
