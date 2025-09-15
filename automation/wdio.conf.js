const path = require('path');

exports.config = {
    // WebDriverIO Configuration for Appium Flutter Testing
    
    // Test runner
    runner: 'local',
    
    // Test specs
    specs: [
        './tests/specs/**/*.js'
    ],
    
    // Patterns to exclude
    exclude: [],
    
    // Maximum instances
    maxInstances: 1,
    
    // Capabilities for Android and iOS
    capabilities: [{
        // Android configuration
        platformName: 'Android',
        'appium:automationName': 'Flutter',
        'appium:deviceName': 'Android Emulator',
        'appium:platformVersion': '13.0',
        'appium:app': path.resolve('../build/app/outputs/flutter-apk/app-debug.apk'),
        'appium:appPackage': 'com.example.flutter_tdd',
        'appium:appActivity': '.MainActivity',
        'appium:noReset': false,
        'appium:fullReset': false,
        'appium:newCommandTimeout': 300,
        'appium:autoGrantPermissions': true,
        'appium:unicodeKeyboard': true,
        'appium:resetKeyboard': true,
        
        // Flutter-specific capabilities
        'appium:flutterEnableAccessibility': true,
        'appium:flutterSystemPort': 9999
    }],
    
    // Test framework
    framework: 'mocha',
    
    // Mocha options
    mochaOpts: {
        ui: 'bdd',
        timeout: 60000,
        require: ['./tests/helpers/setup.js']
    },
    
    // Appium service configuration
    services: [
        ['appium', {
            command: 'appium',
            args: {
                relaxedSecurity: true,
                sessionOverride: true,
                log: './logs/appium.log'
            }
        }]
    ],
    
    // Base URL
    baseUrl: 'http://localhost',
    
    // Connection options
    connectionRetryTimeout: 120000,
    connectionRetryCount: 3,
    
    // Reporters
    reporters: [
        'spec',
        ['allure', {
            outputDir: 'reports/allure-results/',
            disableWebdriverStepsReporting: true,
            disableWebdriverScreenshotsReporting: false,
        }]
    ],
    
    // Hooks
    before: function (capabilities, specs) {
        // Setup before tests
        console.log('🚀 Starting automation tests...');
    },
    
    beforeTest: function (test, context) {
        // Before each test
        console.log(`📝 Running test: ${test.title}`);
    },
    
    afterTest: function (test, context, { error, result, duration, passed, retries }) {
        // After each test
        if (error) {
            console.log(`❌ Test failed: ${test.title}`);
            // Take screenshot on failure
            browser.saveScreenshot(`./screenshots/FAILED_${test.title.replace(/\s+/g, '_')}_${Date.now()}.png`);
        } else {
            console.log(`✅ Test passed: ${test.title}`);
        }
    },
    
    after: function (result, capabilities, specs) {
        // Cleanup after tests
        console.log('🏁 Tests completed');
    }
};
