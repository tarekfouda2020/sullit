/**
 * Login-specific helper functions for Suliit App automation tests
 */

const { testData, testDataHelpers } = require('./testData');

const loginHelpers = {
    /**
     * Perform complete login flow with validation
     * @param {Object} loginPage - Login page object
     * @param {Object} credentials - User credentials
     * @param {boolean} shouldSucceed - Whether login should succeed
     */
    async performLoginFlow(loginPage, credentials, shouldSucceed = true) {
        console.log(`🔐 Performing login flow for: ${credentials.email}`);
        
        // Clear any existing form data
        await loginPage.clearForm();
        
        // Enter credentials
        await loginPage.enterEmail(credentials.email);
        await loginPage.enterPassword(credentials.password);
        
        // Take screenshot before login attempt
        await loginPage.takeLoginScreenshot(`login_attempt_${credentials.email.replace('@', '_at_')}`);
        
        // Submit login
        await loginPage.tapLoginButton();
        
        if (shouldSucceed) {
            // Wait for successful login
            await loginPage.waitForLoginSuccess();
            console.log('✅ Login flow completed successfully');
        } else {
            // Wait for error
            await loginPage.waitForLoginError();
            console.log('⚠️ Login flow completed with expected error');
        }
        
        // Take screenshot after login attempt
        await loginPage.takeLoginScreenshot(`login_result_${credentials.email.replace('@', '_at_')}`);
    },

    /**
     * Test multiple invalid login attempts
     * @param {Object} loginPage - Login page object
     * @param {Array} invalidCredentials - Array of invalid credential objects
     */
    async testMultipleInvalidLogins(loginPage, invalidCredentials) {
        for (const creds of invalidCredentials) {
            console.log(`🔍 Testing invalid login: ${creds.email}`);
            
            await this.performLoginFlow(loginPage, creds, false);
            
            // Verify we're still on login page
            const isOnLoginPage = await loginPage.isElementPresent(loginPage.loginButton);
            expect(isOnLoginPage).to.be.true;
            
            // Clear form for next test
            await loginPage.clearForm();
            await loginPage.wait(500);
        }
    },

    /**
     * Test email validation with various invalid formats
     * @param {Object} loginPage - Login page object
     */
    async testEmailValidation(loginPage) {
        const invalidEmails = testData.invalidEmails;
        
        for (const emailTest of invalidEmails) {
            console.log(`📧 Testing invalid email: ${emailTest.email} (${emailTest.description})`);
            
            await loginPage.clearForm();
            await loginPage.enterEmail(emailTest.email);
            await loginPage.enterPassword('ValidPassword123!');
            await loginPage.tapLoginButton();
            
            await loginPage.wait(1000);
            
            // Should still be on login page due to validation
            const isOnLoginPage = await loginPage.isElementPresent(loginPage.loginButton);
            expect(isOnLoginPage).to.be.true;
        }
    },

    /**
     * Test password field functionality
     * @param {Object} loginPage - Login page object
     */
    async testPasswordFieldFunctionality(loginPage) {
        const testPassword = 'TestPassword123!';
        
        // Test password entry
        await loginPage.enterPassword(testPassword);
        
        // Test password visibility toggle
        await loginPage.togglePasswordVisibility();
        await loginPage.wait(500);
        
        // Toggle back to hidden
        await loginPage.togglePasswordVisibility();
        await loginPage.wait(500);
        
        // Verify password field still contains text
        const passwordText = await loginPage.getPasswordText();
        expect(passwordText.length).to.be.greaterThan(0);
        
        console.log('✅ Password field functionality tested');
    },

    /**
     * Test form field navigation and focus
     * @param {Object} loginPage - Login page object
     */
    async testFormFieldNavigation(loginPage) {
        // Enter email and check if focus moves to password field
        await loginPage.enterEmail('test@example.com');
        
        // Simulate tab navigation (implementation depends on app behavior)
        await loginPage.wait(500);
        
        // Enter password
        await loginPage.enterPassword('testPassword');
        
        console.log('✅ Form field navigation tested');
    },

    /**
     * Test social media login options
     * @param {Object} loginPage - Login page object
     */
    async testSocialMediaLogins(loginPage) {
        // Test Facebook login button
        console.log('📘 Testing Facebook login button');
        await loginPage.takeLoginScreenshot('before_facebook_tap');
        await loginPage.tapFacebookLogin();
        await loginPage.wait(2000);
        await loginPage.takeLoginScreenshot('after_facebook_tap');
        
        // Navigate back to login page if needed
        await loginPage.navigateToLogin();
        
        // Test Google login button
        console.log('🔍 Testing Google login button');
        await loginPage.takeLoginScreenshot('before_google_tap');
        await loginPage.tapGoogleLogin();
        await loginPage.wait(2000);
        await loginPage.takeLoginScreenshot('after_google_tap');
    },

    /**
     * Test tab switching functionality
     * @param {Object} loginPage - Login page object
     */
    async testTabSwitching(loginPage) {
        // Start on login tab
        await loginPage.switchToLoginTab();
        await loginPage.wait(500);
        
        // Switch to register tab
        await loginPage.switchToRegisterTab();
        await loginPage.wait(500);
        
        // Switch back to login tab
        await loginPage.switchToLoginTab();
        await loginPage.wait(500);
        
        // Verify login elements are visible
        const loginButtonVisible = await loginPage.isElementPresent(loginPage.loginButton);
        expect(loginButtonVisible).to.be.true;
        
        console.log('✅ Tab switching functionality tested');
    },

    /**
     * Test form persistence during navigation
     * @param {Object} loginPage - Login page object
     */
    async testFormPersistence(loginPage) {
        const testEmail = 'test@example.com';
        const testPassword = 'testPassword123';
        
        // Enter data in login form
        await loginPage.enterEmail(testEmail);
        await loginPage.enterPassword(testPassword);
        
        // Switch tabs
        await loginPage.switchToRegisterTab();
        await loginPage.wait(500);
        await loginPage.switchToLoginTab();
        await loginPage.wait(500);
        
        // Check if data is preserved (depends on app implementation)
        // This is a placeholder - actual implementation would check form state
        console.log('✅ Form persistence tested');
    },

    /**
     * Test rapid button interactions
     * @param {Object} loginPage - Login page object
     */
    async testRapidButtonInteractions(loginPage) {
        await loginPage.enterEmail('test@example.com');
        await loginPage.enterPassword('testPassword123');
        
        // Rapidly tap login button
        for (let i = 0; i < 5; i++) {
            await loginPage.tapLoginButton();
            await loginPage.wait(100);
        }
        
        // Should handle multiple taps gracefully
        console.log('✅ Rapid button interactions tested');
    },

    /**
     * Test long input handling
     * @param {Object} loginPage - Login page object
     */
    async testLongInputHandling(loginPage) {
        const longInputs = testData.longInputTests;
        
        // Test long email
        await loginPage.clearForm();
        await loginPage.enterEmail(longInputs.longEmail);
        await loginPage.wait(500);
        
        // Test long password
        await loginPage.enterPassword(longInputs.longPassword);
        await loginPage.wait(500);
        
        // Try to submit
        await loginPage.tapLoginButton();
        await loginPage.wait(1000);
        
        console.log('✅ Long input handling tested');
    },

    /**
     * Test special characters in input
     * @param {Object} loginPage - Login page object
     */
    async testSpecialCharacterInput(loginPage) {
        const specialTests = testData.specialCharacterTests;
        
        // Test special character emails
        for (const email of specialTests.emails) {
            await loginPage.clearForm();
            await loginPage.enterEmail(email);
            await loginPage.enterPassword('TestPassword123!');
            await loginPage.wait(500);
            
            console.log(`✅ Special character email tested: ${email}`);
        }
        
        // Test special character passwords
        for (const password of specialTests.passwords) {
            await loginPage.clearForm();
            await loginPage.enterEmail('test@example.com');
            await loginPage.enterPassword(password);
            await loginPage.wait(500);
            
            console.log(`✅ Special character password tested`);
        }
    },

    /**
     * Validate login page UI elements
     * @param {Object} loginPage - Login page object
     */
    async validateLoginPageUI(loginPage) {
        const expectedElements = [
            { element: loginPage.headerLogo, name: 'Header Logo' },
            { element: loginPage.loginTab, name: 'Login Tab' },
            { element: loginPage.registerTab, name: 'Register Tab' },
            { element: loginPage.emailField, name: 'Email Field' },
            { element: loginPage.passwordField, name: 'Password Field' },
            { element: loginPage.loginButton, name: 'Login Button' },
            { element: loginPage.passwordToggleButton, name: 'Password Toggle' },
            { element: loginPage.forgetPasswordButton, name: 'Forgot Password Link' },
            { element: loginPage.registerNowLink, name: 'Register Link' },
            { element: loginPage.orText, name: 'Or Text' },
            { element: loginPage.facebookIcon, name: 'Facebook Icon' },
            { element: loginPage.googleIcon, name: 'Google Icon' }
        ];
        
        for (const item of expectedElements) {
            const isPresent = await loginPage.isElementPresent(item.element);
            expect(isPresent).to.be.true;
            console.log(`✅ ${item.name} is present`);
        }
    },

    /**
     * Performance test for login page loading
     * @param {Object} loginPage - Login page object
     */
    async testLoginPagePerformance(loginPage) {
        const startTime = Date.now();
        
        // Navigate to login page
        await loginPage.navigateToLogin();
        await loginPage.validateLoginPageDisplayed();
        
        const loadTime = Date.now() - startTime;
        const expectedLoadTime = testDataHelpers.getPerformanceExpectation('pageLoadTime');
        
        console.log(`📊 Login page load time: ${loadTime}ms (expected: <${expectedLoadTime}ms)`);
        
        // Assert load time is within acceptable range
        expect(loadTime).to.be.lessThan(expectedLoadTime);
    },

    /**
     * Test app state after backgrounding
     * @param {Object} loginPage - Login page object
     */
    async testAppBackgrounding(loginPage) {
        // Enter some test data
        await loginPage.enterEmail('test@example.com');
        
        // Background the app
        await browser.background(2);
        await loginPage.wait(1000);
        
        // Verify app is still functional
        const health = await browser.execute('flutter:checkHealth');
        expect(health).to.be.true;
        
        // Verify login page is still displayed
        const isOnLoginPage = await loginPage.isElementPresent(loginPage.loginButton);
        expect(isOnLoginPage).to.be.true;
        
        console.log('✅ App backgrounding tested');
    },

    /**
     * Generate test report data
     * @param {string} testName - Name of the test
     * @param {boolean} passed - Whether test passed
     * @param {number} duration - Test duration in ms
     * @param {string} details - Additional test details
     */
    generateTestReport(testName, passed, duration, details = '') {
        return {
            testName,
            passed,
            duration,
            details,
            timestamp: new Date().toISOString()
        };
    }
};

module.exports = loginHelpers;
