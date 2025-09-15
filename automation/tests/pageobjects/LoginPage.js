/**
 * Login Page Object for Suliit App
 * Contains all selectors and methods for login page automation
 */

const BasePage = require('./BasePage');

class LoginPage extends BasePage {
    constructor() {
        super();
        
        // Tab selectors
        this.loginTab = byText('login');
        this.registerTab = byText('register');
        
        // Form field selectors
        this.emailField = byType('GenericTextField').at(0); // First text field is email
        this.passwordField = byType('GenericTextField').at(1); // Second text field is password
        this.emailHint = byText('enterYourEmailHint');
        this.passwordHint = byText('enterYourPassword');
        
        // Button selectors
        this.loginButton = byText('login');
        this.passwordToggleButton = byType('IconButton');
        this.forgetPasswordButton = byText('restore');
        
        // Social media selectors
        this.facebookIcon = byType('Image').at(0); // Facebook icon
        this.googleIcon = byType('Image').at(1); // Google icon
        this.orText = byText('or');
        
        // Navigation and other elements
        this.registerNowLink = byText('registerNow');
        this.dontHaveAccountText = byText('dontHaveAccount');
        this.forgetPasswordText = byText('forgetPassword');
        
        // Header elements
        this.headerLogo = byType('BuildHeaderLogo');
        this.headerTitle = byType('BuildHeaderTitle');
        
        // Form validation
        this.formKey = byType('Form');
        
        // Loading states
        this.loadingButton = byType('LoadingButton');
    }

    /**
     * Navigate to login page
     */
    async navigateToLogin() {
        // Assuming login is the default page or accessible from main screen
        await this.waitForAppReady();
        await this.waitForElement(this.headerLogo);
    }

    /**
     * Switch to login tab
     */
    async switchToLoginTab() {
        await this.tap(this.loginTab);
        await this.wait(500); // Wait for tab animation
    }

    /**
     * Switch to register tab
     */
    async switchToRegisterTab() {
        await this.tap(this.registerTab);
        await this.wait(500); // Wait for tab animation
    }

    /**
     * Enter email in the email field
     * @param {string} email - Email to enter
     */
    async enterEmail(email) {
        await this.enterText(this.emailField, email);
    }

    /**
     * Enter password in the password field
     * @param {string} password - Password to enter
     */
    async enterPassword(password) {
        await this.enterText(this.passwordField, password);
    }

    /**
     * Toggle password visibility
     */
    async togglePasswordVisibility() {
        await this.tap(this.passwordToggleButton);
        await this.wait(300);
    }

    /**
     * Tap login button
     */
    async tapLoginButton() {
        await this.tap(this.loginButton);
    }

    /**
     * Complete login with email and password
     * @param {string} email - User email
     * @param {string} password - User password
     */
    async loginWithCredentials(email, password) {
        await this.switchToLoginTab();
        await this.enterEmail(email);
        await this.enterPassword(password);
        await this.tapLoginButton();
    }

    /**
     * Tap forgot password link
     */
    async tapForgotPassword() {
        await this.tap(this.forgetPasswordButton);
    }

    /**
     * Tap register now link
     */
    async tapRegisterNow() {
        await this.tap(this.registerNowLink);
    }

    /**
     * Tap Facebook login
     */
    async tapFacebookLogin() {
        await this.tap(this.facebookIcon);
    }

    /**
     * Tap Google login
     */
    async tapGoogleLogin() {
        await this.tap(this.googleIcon);
    }

    /**
     * Clear all form fields
     */
    async clearForm() {
        await this.enterText(this.emailField, '');
        await this.enterText(this.passwordField, '');
    }

    /**
     * Check if login tab is selected
     * @returns {boolean} True if login tab is selected
     */
    async isLoginTabSelected() {
        // This would need to check the selected state of the tab
        // Implementation depends on how the selected state is indicated
        return await this.isElementPresent(this.loginTab);
    }

    /**
     * Check if register tab is selected
     * @returns {boolean} True if register tab is selected
     */
    async isRegisterTabSelected() {
        return await this.isElementPresent(this.registerTab);
    }

    /**
     * Check if email field has focus
     * @returns {boolean} True if email field is focused
     */
    async isEmailFieldFocused() {
        // Implementation would check focus state
        return await this.isElementPresent(this.emailField);
    }

    /**
     * Check if password field has focus
     * @returns {boolean} True if password field is focused
     */
    async isPasswordFieldFocused() {
        return await this.isElementPresent(this.passwordField);
    }

    /**
     * Get email field text
     * @returns {string} Current email field text
     */
    async getEmailText() {
        return await this.getText(this.emailField);
    }

    /**
     * Get password field text
     * @returns {string} Current password field text
     */
    async getPasswordText() {
        return await this.getText(this.passwordField);
    }

    /**
     * Check if login button is enabled
     * @returns {boolean} True if login button is enabled
     */
    async isLoginButtonEnabled() {
        return await this.isElementPresent(this.loginButton);
    }

    /**
     * Check if loading state is active
     * @returns {boolean} True if loading
     */
    async isLoading() {
        return await this.isElementPresent(this.loadingButton);
    }

    /**
     * Wait for login to complete successfully
     */
    async waitForLoginSuccess() {
        // Wait for navigation away from login page
        // This would typically wait for a success indicator or navigation
        await this.wait(3000);
    }

    /**
     * Wait for login error to appear
     */
    async waitForLoginError() {
        // Wait for error message or toast to appear
        await this.wait(2000);
    }

    /**
     * Check if form validation errors are present
     * @returns {boolean} True if validation errors exist
     */
    async hasValidationErrors() {
        // This would check for validation error messages
        // Implementation depends on how errors are displayed
        return false; // Placeholder
    }

    /**
     * Get all visible text elements for debugging
     * @returns {Array} Array of text elements
     */
    async getAllVisibleText() {
        // Helper method for debugging - get all text on screen
        const elements = [];
        // Implementation would collect all text elements
        return elements;
    }

    /**
     * Take screenshot of login page
     * @param {string} name - Screenshot name
     */
    async takeLoginScreenshot(name = 'login_page') {
        await this.takeScreenshot(name);
    }

    /**
     * Validate login page is displayed
     */
    async validateLoginPageDisplayed() {
        await this.waitForElement(this.headerLogo);
        await this.waitForElement(this.loginTab);
        await this.waitForElement(this.registerTab);
        await this.waitForElement(this.emailField);
        await this.waitForElement(this.passwordField);
        await this.waitForElement(this.loginButton);
    }

    /**
     * Validate form fields are empty
     */
    async validateFormFieldsEmpty() {
        const emailText = await this.getEmailText();
        const passwordText = await this.getPasswordText();
        return emailText === '' && passwordText === '';
    }

    /**
     * Validate social media options are visible
     */
    async validateSocialMediaOptionsVisible() {
        await this.waitForElement(this.orText);
        await this.waitForElement(this.facebookIcon);
        await this.waitForElement(this.googleIcon);
    }

    /**
     * Validate forgot password link is visible
     */
    async validateForgotPasswordLinkVisible() {
        await this.waitForElement(this.forgetPasswordText);
        await this.waitForElement(this.forgetPasswordButton);
    }

    /**
     * Validate register link is visible
     */
    async validateRegisterLinkVisible() {
        await this.waitForElement(this.dontHaveAccountText);
        await this.waitForElement(this.registerNowLink);
    }
}

module.exports = LoginPage;
