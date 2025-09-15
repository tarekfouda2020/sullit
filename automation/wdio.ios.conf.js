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
        // './tests/specs/android/**/*.js' // Exclude Android-specific tests (commented out as no android folder exists)
    ],
    
    //
    // ============
    // Capabilities
    // ============
    maxInstances: 1,
    
    capabilities: [{
        // iOS Configuration
        platformName: 'iOS',
        'appium:automationName': 'XCUITest',
        'appium:deviceName': 'iPhone 16 Pro Max',
        'appium:platformVersion': '18.4',
        // Use app path to install and launch the app
        'appium:app': '/Volumes/Data/innovent/suliit/build/ios/Debug-iphonesimulator/Runner.app',
        'appium:bundleId': 'ua.suliit.com',

        // App behavior settings
        'appium:noReset': false,
        'appium:fullReset': false,
        'appium:autoLaunch': true,
        'appium:forceAppLaunch': true,
        'appium:autoAcceptAlerts': true,
        'appium:autoDismissAlerts': true,
        
        // Performance settings
        'appium:newCommandTimeout': 300,
        'appium:commandTimeouts': 240000,
        'appium:launchTimeout': 90000,
        
        // iOS-specific capabilities for Flutter apps
        'appium:waitForQuiescence': false,
        'appium:reduceMotion': true,
        
        // iOS-specific settings
        'appium:useNewWDA': true,
        'appium:wdaLaunchTimeout': 120000,
        'appium:wdaConnectionTimeout': 120000,
        'appium:iosInstallPause': 8000,
        
        // Development settings - remove for simulator testing
        // 'appium:xcodeOrgId': 'YOUR_TEAM_ID',
        // 'appium:xcodeSigningId': 'iPhone Developer',
        // 'appium:updatedWDABundleId': 'com.example.WebDriverAgentRunner',
        
        // Simulator settings
        'appium:simulatorStartupTimeout': 120000,
        'appium:isHeadless': false,
        'appium:connectHardwareKeyboard': false,
        
        // Debugging
        'appium:enablePerformanceLogging': true,
        'appium:printPageSourceOnFindFailure': true,
        'appium:screenshotWaitTimeout': 10
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
                log: './logs/appium-ios.log',
                logLevel: 'info'
            }
        }],
        ['visual', {
            baselineFolder: path.join(process.cwd(), 'tests/visual/baseline/ios/'),
            formatImageName: '{tag}-{logName}-{width}x{height}',
            screenshotPath: path.join(process.cwd(), 'tests/visual/actual/ios/'),
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
        ['spec', {
            addConsoleLogs: true,
            showPreface: false
        }],
        ['allure', {
            outputDir: 'reports/allure-results/ios/',
            disableWebdriverStepsReporting: false,
            disableWebdriverScreenshotsReporting: false,
            useCucumberStepReporter: false,
            addConsoleLogs: true
        }],
        ['junit', {
            outputDir: 'reports/junit/ios/',
            outputFileFormat: function(options) {
                return `ios-results-${options.cid}.xml`
            }
        }],
        ['json', {
            outputDir: 'reports/json/ios/',
            outputFileFormat: function(options) {
                return `ios-results-${options.cid}.json`
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
        console.log('🍎 Preparing iOS automation tests...');
        console.log('📱 Platform: iOS');
        console.log('🔧 Automation: Flutter');
    },
    
    before: function (capabilities, specs) {
        console.log('🚀 Starting iOS automation tests...');
        console.log(`📱 Device: ${capabilities['appium:deviceName']}`);
        console.log(`🔢 Platform Version: ${capabilities['appium:platformVersion']}`);
    },
    
    beforeTest: function (test, context) {
        console.log(`📝 Running test: ${test.title} [iOS]`);
    },
    
    afterTest: function (test, context, { error, result, duration, passed, retries }) {
        if (error) {
            console.log(`❌ Test failed: ${test.title} [iOS]`);
            const timestamp = new Date().toISOString().replace(/[:.]/g, '-');
            const screenshotPath = `./screenshots/ios/FAILED_${test.title.replace(/\s+/g, '_')}_${timestamp}.png`;
            browser.saveScreenshot(screenshotPath);
            console.log(`📸 Screenshot saved: ${screenshotPath}`);
        } else {
            console.log(`✅ Test passed: ${test.title} [iOS]`);
        }
    },
    
    after: function (result, capabilities, specs) {
        console.log('🏁 iOS tests completed');
    },
    
    onComplete: function(exitCode, config, capabilities, results) {
        console.log('📊 iOS Test Results:');
        console.log(`Exit Code: ${exitCode}`);
        console.log('📁 Reports available in: reports/allure-results/ios/');
    }
};
