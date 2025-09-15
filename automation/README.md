# 🤖 Suliit Automation Testing

This directory contains all automation testing configurations and tools for the Suliit Flutter application.

## 📁 Directory Structure

```
automation/
├── config/                  # Configuration files
│   └── appium_config.json  # Appium server and device configurations
├── scripts/                # Automation scripts
│   ├── run_tests.sh       # Interactive test runner
│   └── setup_automation.sh # Environment setup script
├── tests/                  # Test files
│   └── test_driver/       # Flutter Driver tests (for Appium integration)
├── docs/                   # Documentation
│   ├── README_AUTOMATION.md
│   └── AUTOMATION_SETUP_COMPLETE.md
└── logs/                   # Log files
    └── appium.log         # Appium server logs
```

## 🚀 Quick Start

### 1. Run Setup
```bash
cd automation/scripts
./setup_automation.sh
```

### 2. Start Automation Testing
```bash
cd automation/scripts
./run_tests.sh
```

## 🎯 Automation Testing Types

### Appium Mobile Automation
- **Purpose**: Cross-platform mobile app automation
- **Platforms**: Android & iOS
- **Configuration**: `config/appium_config.json`
- **Drivers**: UIAutomator2 (Android), XCUITest (iOS)

### Flutter Driver Integration
- **Purpose**: Flutter-specific automation hooks
- **Location**: `tests/test_driver/`
- **Usage**: Provides app instrumentation for Appium

## 📋 Prerequisites

- **Node.js** (v14+)
- **Appium** (installed globally)
- **Android SDK** (for Android testing)
- **Xcode** (for iOS testing on macOS)
- **Flutter SDK**

## 🔧 Configuration

### Environment Variables
```bash
export ANDROID_HOME="$HOME/Library/Android/sdk"
export JAVA_HOME="/path/to/java"
export PATH="$PATH:$ANDROID_HOME/platform-tools:$JAVA_HOME/bin"
```

### Appium Configuration
Edit `config/appium_config.json` to match your:
- Device names and versions
- App package/bundle identifiers
- Platform-specific settings

## 🎮 Running Tests

### Interactive Menu
```bash
./scripts/run_tests.sh
```

### Direct Commands
```bash
# Start Appium server
./scripts/run_tests.sh appium-start

# Check system configuration
./scripts/run_tests.sh doctor

# Run all automation tests
./scripts/run_tests.sh all
```

## 📖 Documentation

- **Setup Guide**: `docs/README_AUTOMATION.md`
- **Completion Status**: `docs/AUTOMATION_SETUP_COMPLETE.md`

## 🔍 Verification

Check your automation setup:
```bash
# Verify Appium configuration
appium-doctor --android --ios

# Check Flutter environment
flutter doctor

# Test Appium server
curl http://127.0.0.1:4723/wd/hub/status
```

## 📝 Notes

- This setup focuses on **Appium automation testing only**
- Integration tests and unit tests are handled separately
- Logs are stored in `logs/` directory
- All paths are relative to the project root

## 🆘 Troubleshooting

1. **Environment Issues**: Run `scripts/setup_automation.sh verify`
2. **Appium Problems**: Check `logs/appium.log`
3. **Device Connection**: Verify with `adb devices` (Android) or `xcrun simctl list` (iOS)

---

**Ready to automate your mobile testing!** 🚀
