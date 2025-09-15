# Suliit Automation Testing Setup

This document provides instructions for setting up and running automation tests for the Suliit Flutter application.

## Overview

The project is configured with multiple testing frameworks:
- **Flutter Driver**: For end-to-end testing within Flutter
- **Integration Tests**: For widget and integration testing
- **Appium**: For cross-platform mobile automation testing

## Prerequisites

### Required Software
1. **Node.js** (v14 or higher) - ✅ Installed (v22.6.0)
2. **npm** - ✅ Installed (v10.8.2)
3. **Flutter SDK** - Required for building and testing
4. **Android Studio** - For Android development and emulator
5. **Xcode** - For iOS development and simulator (macOS only)

### Installed Components
- ✅ Appium (latest version)
- ✅ Appium Doctor
- ✅ UIAutomator2 Driver (for Android)
- ✅ XCUITest Driver (for iOS)

## Project Structure

```
suliit/
└── automation/              # Automation testing directory
    ├── config/              # Configuration files
    │   └── appium_config.json # Appium configuration
    ├── scripts/             # Automation scripts
    │   ├── run_tests.sh    # Test runner script
    │   └── setup_automation.sh # Setup script
    ├── tests/              # Test files
    │   └── test_driver/    # Flutter Driver tests
    │       ├── app.dart    # Test app entry point
    │       └── app_test.dart # Driver test cases
    ├── docs/               # Documentation
    └── logs/               # Log files
```

## Configuration Files

### 1. pubspec.yaml
Added the following dependencies:
```yaml
dev_dependencies:
  flutter_driver:
    sdk: flutter
  integration_test:
    sdk: flutter
  test: any
```

### 2. appium_config.json
Contains configuration for both Android and iOS platforms with appropriate capabilities.

## Running Tests

### Quick Start
Use the test runner script for an interactive menu:
```bash
./test_scripts/run_tests.sh
```

### Individual Test Types

#### 1. Flutter Driver Tests
```bash
# Build the app first
flutter build apk --debug

# Run Flutter Driver tests
flutter drive --target=test_driver/app.dart
```

#### 2. Integration Tests
```bash
# Get dependencies
flutter pub get

# Run integration tests
flutter test integration_test/
```

#### 3. Appium Tests
```bash
# Start Appium server
appium --relaxed-security --session-override

# Run your Appium test scripts (implement as needed)
```

### Using the Test Runner Script

The `run_tests.sh` script provides several options:

```bash
# Run Flutter Driver tests
./test_scripts/run_tests.sh driver

# Run Integration tests
./test_scripts/run_tests.sh integration

# Start Appium server
./test_scripts/run_tests.sh appium-start

# Stop Appium server
./test_scripts/run_tests.sh appium-stop

# Check system configuration
./test_scripts/run_tests.sh doctor

# Run all tests
./test_scripts/run_tests.sh all

# Interactive menu (default)
./test_scripts/run_tests.sh
```

## Appium Doctor

Run Appium Doctor to verify your system configuration:

```bash
appium-doctor --android --ios
```

This will check for:
- Android SDK configuration
- iOS development setup
- Required dependencies
- System environment variables

## Device Setup

### Android
1. **Physical Device**: Enable Developer Options and USB Debugging
2. **Emulator**: Create and start an Android Virtual Device (AVD)
3. **Verify**: Run `adb devices` to confirm device connectivity

### iOS (macOS only)
1. **Physical Device**: Configure development provisioning profile
2. **Simulator**: Use Xcode Simulator
3. **Verify**: Run `xcrun simctl list devices` to see available simulators

## Configuration Updates Needed

Before running tests, update the following in `appium_config.json`:

### Android Configuration
- Update `deviceName` to match your device/emulator
- Update `platformVersion` to match your target Android version
- Verify `appPackage` matches your app's package name

### iOS Configuration
- Update `deviceName` to match your target iPhone/iPad
- Update `platformVersion` to match your target iOS version
- Add your Apple Developer Team ID to `xcodeOrgId`
- Update `bundleId` to match your app's bundle identifier

## Writing Tests

### Flutter Driver Tests
Add test cases in `test_driver/app_test.dart`:
```dart
test('your test description', () async {
  // Find elements and perform actions
  await driver.tap(find.byValueKey('your_key'));
  await driver.waitFor(find.text('Expected Text'));
});
```

### Integration Tests
Add test cases in `integration_test/app_test.dart`:
```dart
testWidgets('your test description', (tester) async {
  // Widget testing with tester
  await tester.tap(find.byKey(Key('your_key')));
  expect(find.text('Expected Text'), findsOneWidget);
});
```

## Troubleshooting

### Common Issues

1. **Appium Server Not Starting**
   - Check if port 4723 is available
   - Run `appium-doctor` to verify setup

2. **Device Not Detected**
   - For Android: Check `adb devices`
   - For iOS: Check `xcrun simctl list devices`

3. **Build Failures**
   - Run `flutter clean && flutter pub get`
   - Check Flutter and Dart SDK versions

4. **Driver Connection Issues**
   - Ensure app is built with `enableFlutterDriverExtension()`
   - Check device connectivity

### Getting Help

1. Run Appium Doctor: `appium-doctor --android --ios`
2. Check Flutter Doctor: `flutter doctor`
3. Verify dependencies: `flutter pub deps`

## Next Steps

1. **Customize Tests**: Update test cases based on your app's specific functionality
2. **CI/CD Integration**: Add automation tests to your build pipeline
3. **Reporting**: Implement test reporting and screenshots
4. **Page Objects**: Create page object models for better test organization
5. **Data-Driven Tests**: Implement data-driven testing for comprehensive coverage

## Resources

- [Flutter Driver Documentation](https://flutter.dev/docs/cookbook/testing/integration/introduction)
- [Appium Documentation](https://appium.io/docs/en/about-appium/intro/)
- [Integration Testing in Flutter](https://flutter.dev/docs/testing/integration-tests)
