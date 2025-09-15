/**
 * Base Page Object for Flutter App Automation
 * Contains common methods and utilities for all page objects
 */

class BasePage {
    constructor() {
        this.timeout = 10000;
    }

    /**
     * Wait for Flutter element to be present
     * @param {Object} finder - Flutter finder object
     * @param {number} timeout - Timeout in milliseconds
     */
    async waitForElement(finder, timeout = this.timeout) {
        await browser.execute('flutter:waitFor', finder, { timeout });
    }

    /**
     * Tap on Flutter element
     * @param {Object} finder - Flutter finder object
     */
    async tap(finder) {
        await this.waitForElement(finder);
        await browser.execute('flutter:tap', finder);
    }

    /**
     * Enter text in Flutter text field
     * @param {Object} finder - Flutter finder object
     * @param {string} text - Text to enter
     */
    async enterText(finder, text) {
        await this.waitForElement(finder);
        await browser.execute('flutter:enterText', finder, text);
    }

    /**
     * Get text from Flutter element
     * @param {Object} finder - Flutter finder object
     * @returns {string} Element text
     */
    async getText(finder) {
        await this.waitForElement(finder);
        return await browser.execute('flutter:getText', finder);
    }

    /**
     * Scroll until element is visible
     * @param {Object} finder - Flutter finder object to find
     * @param {Object} scrollable - Scrollable container finder
     */
    async scrollUntilVisible(finder, scrollable = byType('Scrollable')) {
        await browser.execute('flutter:scrollUntilVisible', finder, {
            scrollable: scrollable,
            dyScroll: -300
        });
    }

    /**
     * Wait for Flutter app to be ready
     */
    async waitForAppReady() {
        await browser.execute('flutter:waitForFirstFrame');
        const health = await browser.execute('flutter:checkHealth');
        if (!health) {
            throw new Error('Flutter app is not ready');
        }
    }

    /**
     * Take screenshot with timestamp
     * @param {string} name - Screenshot name
     */
    async takeScreenshot(name) {
        const timestamp = new Date().toISOString().replace(/[:.]/g, '-');
        return await browser.saveScreenshot(`./screenshots/${name}_${timestamp}.png`);
    }

    /**
     * Wait for specific duration
     * @param {number} ms - Milliseconds to wait
     */
    async wait(ms) {
        await browser.pause(ms);
    }

    /**
     * Check if element exists
     * @param {Object} finder - Flutter finder object
     * @returns {boolean} True if element exists
     */
    async isElementPresent(finder) {
        try {
            await browser.execute('flutter:waitFor', finder, { timeout: 2000 });
            return true;
        } catch (error) {
            return false;
        }
    }

    /**
     * Swipe on screen
     * @param {Object} options - Swipe options {startX, startY, endX, endY}
     */
    async swipe(options) {
        const { startX, startY, endX, endY } = options;
        await browser.touchAction([
            { action: 'press', x: startX, y: startY },
            { action: 'wait', ms: 1000 },
            { action: 'moveTo', x: endX, y: endY },
            { action: 'release' }
        ]);
    }

    /**
     * Get current screen size
     * @returns {Object} Screen dimensions {width, height}
     */
    async getScreenSize() {
        return await browser.getWindowSize();
    }

    /**
     * Swipe left on screen
     */
    async swipeLeft() {
        const { width, height } = await this.getScreenSize();
        await this.swipe({
            startX: width * 0.8,
            startY: height * 0.5,
            endX: width * 0.2,
            endY: height * 0.5
        });
    }

    /**
     * Swipe right on screen
     */
    async swipeRight() {
        const { width, height } = await this.getScreenSize();
        await this.swipe({
            startX: width * 0.2,
            startY: height * 0.5,
            endX: width * 0.8,
            endY: height * 0.5
        });
    }

    /**
     * Swipe up on screen
     */
    async swipeUp() {
        const { width, height } = await this.getScreenSize();
        await this.swipe({
            startX: width * 0.5,
            startY: height * 0.8,
            endX: width * 0.5,
            endY: height * 0.2
        });
    }

    /**
     * Swipe down on screen
     */
    async swipeDown() {
        const { width, height } = await this.getScreenSize();
        await this.swipe({
            startX: width * 0.5,
            startY: height * 0.2,
            endX: width * 0.5,
            endY: height * 0.8
        });
    }
}

module.exports = BasePage;
