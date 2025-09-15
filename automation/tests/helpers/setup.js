const { expect } = require('chai');
const FlutterFinder = require('appium-flutter-finder');
const { testData, testDataHelpers } = require('./testData');
const loginHelpers = require('./loginHelpers');
const homeHelpers = require('./homeHelpers');

// Global setup for tests
global.expect = expect;
global.FlutterFinder = FlutterFinder;
global.testData = testData;
global.testDataHelpers = testDataHelpers;
global.loginHelpers = loginHelpers;
global.homeHelpers = homeHelpers;

// Flutter finder shortcuts
global.byValueKey = FlutterFinder.byValueKey;
global.byText = FlutterFinder.byText;
global.byType = FlutterFinder.byType;
global.byTooltip = FlutterFinder.byTooltip;
global.bySemanticsLabel = FlutterFinder.bySemanticsLabel;

// Custom wait functions for Flutter
global.waitForFlutterElement = async function(finder, timeout = 10000) {
    await browser.execute('flutter:waitFor', finder, { timeout });
};

global.scrollUntilVisible = async function(finder, scrollable) {
    await browser.execute('flutter:scrollUntilVisible', finder, {
        scrollable: scrollable || byType('Scrollable'),
        dyScroll: -300
    });
};

// Screenshot helper
global.takeScreenshot = function(name) {
    const timestamp = new Date().toISOString().replace(/[:.]/g, '-');
    return browser.saveScreenshot(`./screenshots/${name}_${timestamp}.png`);
};

// Flutter-specific assertions
global.expectFlutterElement = async function(finder) {
    const isPresent = await browser.execute('flutter:checkHealth');
    expect(isPresent).to.be.true;
    
    const element = await browser.execute('flutter:waitFor', finder, { timeout: 5000 });
    expect(element).to.not.be.null;
    return element;
};

console.log('✅ Test setup completed with Flutter helpers');
