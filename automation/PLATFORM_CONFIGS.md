# Platform-Specific WebDriverIO Configurations

This document explains the separate Android and iOS configurations for Appium automation testing.

## 📁 Configuration Files

### Android Configuration: `wdio.android.conf.js`
- **Target Platform**: Android devices and emulators
- **Automation**: Flutter Driver with UIAutomator2
- **App Path**: `../build/app/outputs/flutter-apk/app-debug.apk`
- **Package**: `com.example.flutter_tdd`
- **Activity**: `.MainActivity`

### iOS Configuration: `wdio.ios.conf.js`
- **Target Platform**: iOS devices and simulators
- **Automation**: Flutter Driver with XCUITest
- **App Path**: `../build/ios/ipa/Runner.app`
- **Bundle ID**: `com.example.flutterTdd`
- **Device**: iPhone 16 Pro (iOS 18.4)

## 🚀 Running Tests

### Platform-Specific Commands

```bash
# Run Android tests only
npm run test:android

# Run iOS tests only
npm run test:ios

# Run tests on both platforms
npm run test:both
```

### Using the Interactive Runner

```bash
# Start interactive menu
node run.js

# Or use direct commands
node run.js test:android
node run.js test:ios
node run.js test:both
```

## 📊 Reports and Results

### Separate Report Directories
- **Android Reports**: `reports/allure-results/android/`
- **iOS Reports**: `reports/allure-results/ios/`
- **Screenshots**: `screenshots/android/` and `screenshots/ios/`

### Generate and View Reports

```bash
# Generate reports
npm run report:android
npm run report:ios

# Serve interactive reports
npm run report:serve:android
npm run report:serve:ios
```

## 🔧 Platform-Specific Configurations

### Android-Specific Settings
```javascript
capabilities: [{
    platformName: 'Android',
    'appium:automationName': 'Flutter',
    'appium:deviceName': 'Android Emulator',
    'appium:platformVersion': '13.0',
    'appium:autoGrantPermissions': true,
    'appium:unicodeKeyboard': true,
    'appium:resetKeyboard': true,
    'appium:flutterSystemPort': 9999
}]
```

### iOS-Specific Settings
```javascript
capabilities: [{
    platformName: 'iOS',
    'appium:automationName': 'Flutter',
    'appium:deviceName': 'iPhone 16 Pro',
    'appium:platformVersion': '18.4',
    'appium:autoAcceptAlerts': true,
    'appium:autoDismissAlerts': true,
    'appium:flutterSystemPort': 9998,
    'appium:xcodeOrgId': 'YOUR_TEAM_ID',
    'appium:xcodeSigningId': 'iPhone Developer'
}]
```

## 📱 Device Configuration

### Android Setup
1. **Emulator**: Start Android Virtual Device (AVD)
2. **Physical Device**: Enable USB Debugging
3. **Verify**: `adb devices` should list your device

### iOS Setup
1. **Simulator**: Use Xcode Simulator (iPhone 16 Pro recommended)
2. **Physical Device**: Configure development provisioning
3. **Verify**: `xcrun simctl list devices` should show available simulators

## 🛠️ Customization

### Update Device Names
```javascript
// Android
'appium:deviceName': 'Your Android Device Name'

// iOS  
'appium:deviceName': 'iPhone 15 Pro'
'appium:platformVersion': '17.0'
```

### Update App Identifiers
```javascript
// Android
'appium:appPackage': 'your.app.package.name'

// iOS
'appium:bundleId': 'your.app.bundle.id'
```

### Update Development Team (iOS)
```javascript
'appium:xcodeOrgId': 'YOUR_APPLE_TEAM_ID'
'appium:updatedWDABundleId': 'com.yourcompany.WebDriverAgentRunner'
```

## 📝 Test Organization

### Platform-Specific Tests
```
tests/
├── specs/
│   ├── common/          # Tests for both platforms
│   ├── android/         # Android-only tests
│   └── ios/             # iOS-only tests
└── helpers/
    └── setup.js         # Common test setup
```

### Excluding Platform-Specific Tests
- Android config excludes: `./tests/specs/ios/**/*.js`
- iOS config excludes: `./tests/specs/android/**/*.js`

## 🔍 Debugging

### Log Files
- **Android**: `logs/appium-android.log`
- **iOS**: `logs/appium-ios.log`

### Screenshots on Failure
- **Android**: `screenshots/android/FAILED_testname_timestamp.png`
- **iOS**: `screenshots/ios/FAILED_testname_timestamp.png`

### Visual Testing
- **Android Baselines**: `tests/visual/baseline/android/`
- **iOS Baselines**: `tests/visual/baseline/ios/`

## 🧹 Maintenance

### Clean Test Data
```bash
# Clean all reports and screenshots
npm run clean:all

# Clean reports only
npm run clean:reports

# Clean screenshots only
npm run clean:screenshots
```

### Update Dependencies
```bash
# Update Appium drivers
npm run drivers:install

# Check system configuration
npm run appium:doctor
```

## 🚨 Troubleshooting

### Common Issues

1. **Device Not Found**
   - Android: Check `adb devices`
   - iOS: Check `xcrun simctl list devices`

2. **App Not Found**
   - Verify app build paths in config files
   - Ensure apps are built for the target platform

3. **Driver Issues**
   - Run `npm run drivers:list` to check installed drivers
   - Run `npm run drivers:install` to reinstall

4. **Port Conflicts**
   - Android uses Flutter system port 9999
   - iOS uses Flutter system port 9998
   - Appium server runs on port 4723

### Getting Help

1. **Check Logs**: View platform-specific log files
2. **Run Doctor**: `npm run appium:doctor`
3. **Verify Setup**: `node run.js status`

---

**Platform configurations are now ready for comprehensive Flutter automation testing!** 🚀
