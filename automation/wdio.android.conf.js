const path = require('path');

exports.config = {
    //
    // ====================
    // Runner Configuration
    // ====================
    runner: 'local',
    
    //
    // ==================
    // Specify Test Files
    // ==================
    specs: [
        './tests/specs/**/*.js'
    ],
    
    // Patterns to exclude
    exclude: [
        // './tests/specs/ios/**/*.js' // Exclude iOS-specific tests (commented out as no ios folder exists)
    ],
    
    //
    // ============
    // Capabilities
    // ============
    maxInstances: 1,
    
    capabilities: [{
        // Android Configuration
        platformName: 'Android',
        'appium:automationName': 'Flutter',
        'appium:deviceName': 'Android Emulator',
        'appium:platformVersion': '13.0',
        'appium:app': path.resolve('../build/app/outputs/flutter-apk/app-debug.apk'),
        'appium:appPackage': 'ua.suliit.com',
        'appium:appActivity': '.MainActivity',
        
        // App behavior settings
        'appium:noReset': false,
        'appium:fullReset': false,
        'appium:autoGrantPermissions': true,
        'appium:unicodeKeyboard': true,
        'appium:resetKeyboard': true,
        
        // Performance settings
        'appium:newCommandTimeout': 300,
        'appium:androidInstallTimeout': 90000,
        'appium:adbExecTimeout': 20000,
        
        // Flutter-specific capabilities
        'appium:flutterEnableAccessibility': true,
        'appium:flutterSystemPort': 9999,
        
        // Android-specific settings
        'appium:autoWebview': false,
        'appium:nativeWebScreenshot': true,
        'appium:androidScreenshotPath': '/sdcard/Pictures/Screenshots/',
        'appium:skipDeviceInitialization': false,
        'appium:skipServerInstallation': false,
        'appium:ignoreHiddenApiPolicyError': true,
        
        // Network settings
        'appium:networkSpeed': 'full',
        'appium:gpsEnabled': false,
        
        // Debugging
        'appium:enablePerformanceLogging': true,
        'appium:printPageSourceOnFindFailure': true
    }],
    
    //
    // ===================
    // Test Configurations
    // ===================
    logLevel: 'info',
    bail: 0,
    baseUrl: 'http://localhost',
    waitforTimeout: 10000,
    connectionRetryTimeout: 120000,
    connectionRetryCount: 3,
    
    //
    // Test runner services
    //
    services: [
        ['appium', {
            command: 'appium',
            args: {
                relaxedSecurity: true,
                sessionOverride: true,
                log: './logs/appium-android.log',
                logLevel: 'info'
            }
        }],
        ['visual', {
            baselineFolder: path.join(process.cwd(), 'tests/visual/baseline/android/'),
            formatImageName: '{tag}-{logName}-{width}x{height}',
            screenshotPath: path.join(process.cwd(), 'tests/visual/actual/android/'),
            savePerInstance: true,
            autoSaveBaseline: true,
            compareOptions: {
                blockOutStatusBar: true,
                blockOutToolBar: true
            }
        }]
    ],
    
    //
    // Framework definition
    //
    framework: 'mocha',
    
    //
    // Test reporter for stdout
    //
    reporters: [
        'spec',
        ['allure', {
            outputDir: 'reports/allure-results/android/',
            disableWebdriverStepsReporting: true,
            disableWebdriverScreenshotsReporting: false,
        }],
        ['junit', {
            outputDir: 'reports/junit/android/',
            outputFileFormat: function(options) {
                return `android-results-${options.cid}.xml`
            }
        }]
    ],
    
    //
    // Options to be passed to Mocha
    //
    mochaOpts: {
        ui: 'bdd',
        timeout: 60000,
        require: ['./tests/helpers/setup.js']
    },
    
    //
    // =====
    // Hooks
    // =====
    onPrepare: function (config, capabilities) {
        console.log('🤖 Preparing Android automation tests...');
        console.log('📱 Platform: Android');
        console.log('🔧 Automation: Flutter');
    },
    
    before: function (capabilities, specs) {
        console.log('🚀 Starting Android automation tests...');
        console.log(`📱 Device: ${capabilities['appium:deviceName']}`);
        console.log(`🔢 Platform Version: ${capabilities['appium:platformVersion']}`);
    },
    
    beforeTest: function (test, context) {
        console.log(`📝 Running test: ${test.title} [Android]`);
    },
    
    afterTest: function (test, context, { error, result, duration, passed, retries }) {
        if (error) {
            console.log(`❌ Test failed: ${test.title} [Android]`);
            const timestamp = new Date().toISOString().replace(/[:.]/g, '-');
            const screenshotPath = `./screenshots/android/FAILED_${test.title.replace(/\s+/g, '_')}_${timestamp}.png`;
            browser.saveScreenshot(screenshotPath);
            console.log(`📸 Screenshot saved: ${screenshotPath}`);
        } else {
            console.log(`✅ Test passed: ${test.title} [Android]`);
        }
    },
    
    after: function (result, capabilities, specs) {
        console.log('🏁 Android tests completed');
    },
    
    onComplete: function(exitCode, config, capabilities, results) {
        console.log('📊 Android Test Results:');
        console.log(`Exit Code: ${exitCode}`);
        console.log('📁 Reports available in: reports/allure-results/android/');
    }
};
