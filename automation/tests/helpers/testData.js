/**
 * Test Data for Suliit App Automation Tests
 * Contains test credentials, user data, and test scenarios
 */

const testData = {
    // Valid test credentials
    validUsers: {
        testUser1: {
            email: 'test1@suliit.com',
            password: 'TestPassword123!',
            name: 'Test User 1',
            expectedBehavior: 'successful_login'
        },
        testUser2: {
            email: 'test2@suliit.com',
            password: 'SecurePass456@',
            name: 'Test User 2',
            expectedBehavior: 'successful_login'
        },
        adminUser: {
            email: 'admin@suliit.com',
            password: 'AdminPass789#',
            name: 'Admin User',
            expectedBehavior: 'admin_login_with_discount'
        }
    },

    // Invalid test credentials
    invalidUsers: {
        wrongPassword: {
            email: 'test1@suliit.com',
            password: 'WrongPassword123',
            expectedError: 'invalid_credentials'
        },
        wrongEmail: {
            email: 'nonexistent@suliit.com',
            password: 'TestPassword123!',
            expectedError: 'user_not_found'
        },
        inactiveUser: {
            email: 'inactive@suliit.com',
            password: 'TestPassword123!',
            expectedError: 'account_needs_activation'
        }
    },

    // Email validation test cases
    invalidEmails: [
        {
            email: 'invalid-email',
            description: 'Missing @ symbol'
        },
        {
            email: 'test@',
            description: 'Missing domain'
        },
        {
            email: '@example.com',
            description: 'Missing username'
        },
        {
            email: 'test.example.com',
            description: 'Missing @ symbol'
        },
        {
            email: 'test@.com',
            description: 'Invalid domain format'
        },
        {
            email: 'test..test@example.com',
            description: 'Double dots in username'
        },
        {
            email: 'test@example..com',
            description: 'Double dots in domain'
        },
        {
            email: '',
            description: 'Empty email'
        }
    ],

    // Password validation test cases
    invalidPasswords: [
        {
            password: '',
            description: 'Empty password'
        },
        {
            password: '123',
            description: 'Too short password'
        },
        {
            password: 'short',
            description: 'Short password without numbers'
        }
    ],

    // Special characters test cases
    specialCharacterTests: {
        emails: [
            'test+tag@example.com',
            'test.name@example.com',
            'test_name@example.com',
            'test-name@example.com',
            'test123@example.com'
        ],
        passwords: [
            'p@ssw0rd!',
            'Test#123$',
            'Secure&Pass*',
            'My-Pass_123',
            'P@ssW0rd!@#$%^&*()'
        ]
    },

    // Long input test cases
    longInputTests: {
        longEmail: 'a'.repeat(50) + '@' + 'b'.repeat(50) + '.com',
        longPassword: 'P@ssw0rd!' + 'x'.repeat(100),
        veryLongEmail: 'a'.repeat(200) + '@example.com',
        veryLongPassword: 'P@ssw0rd!' + 'x'.repeat(500)
    },

    // Social media test data
    socialMediaTests: {
        facebook: {
            platform: 'facebook',
            expectedBehavior: 'redirect_to_facebook_auth'
        },
        google: {
            platform: 'google',
            expectedBehavior: 'redirect_to_google_auth'
        }
    },

    // UI text expectations (based on translation keys)
    expectedTexts: {
        login: 'login',
        register: 'register',
        email: 'email',
        password: 'password',
        enterYourEmailHint: 'enterYourEmailHint',
        enterYourPassword: 'enterYourPassword',
        forgetPassword: 'forgetPassword',
        restore: 'restore',
        or: 'or',
        dontHaveAccount: 'dontHaveAccount',
        registerNow: 'registerNow',
        loginHint: 'loginHint',
        registerHint: 'registerHint'
    },

    // Test scenarios for different user flows
    testScenarios: {
        happyPath: {
            name: 'Happy Path Login',
            steps: [
                'Navigate to login page',
                'Enter valid email',
                'Enter valid password',
                'Tap login button',
                'Verify successful login'
            ],
            user: 'testUser1'
        },
        invalidCredentials: {
            name: 'Invalid Credentials',
            steps: [
                'Navigate to login page',
                'Enter invalid email or password',
                'Tap login button',
                'Verify error message',
                'Remain on login page'
            ],
            user: 'wrongPassword'
        },
        emptyFields: {
            name: 'Empty Form Fields',
            steps: [
                'Navigate to login page',
                'Leave fields empty',
                'Tap login button',
                'Verify validation errors',
                'Remain on login page'
            ]
        },
        socialLogin: {
            name: 'Social Media Login',
            steps: [
                'Navigate to login page',
                'Tap social media icon',
                'Verify redirect to social platform',
                'Complete social authentication',
                'Verify successful login'
            ]
        }
    },

    // Performance benchmarks
    performanceExpectations: {
        pageLoadTime: 3000, // 3 seconds
        loginProcessTime: 5000, // 5 seconds
        tabSwitchTime: 500, // 0.5 seconds
        fieldInputDelay: 100, // 0.1 seconds
        buttonResponseTime: 200 // 0.2 seconds
    },

    // Error messages (these would be localized)
    expectedErrors: {
        emptyEmail: 'Email is required',
        emptyPassword: 'Password is required',
        invalidEmail: 'Please enter a valid email address',
        invalidCredentials: 'Invalid email or password',
        networkError: 'Network connection error',
        accountInactive: 'Account needs activation'
    },

    // Test environment configurations
    environments: {
        development: {
            baseUrl: 'https://dev-api.suliit.com',
            timeout: 10000
        },
        staging: {
            baseUrl: 'https://staging-api.suliit.com',
            timeout: 8000
        },
        production: {
            baseUrl: 'https://api.suliit.com',
            timeout: 5000
        }
    }
};

// Helper functions for test data
const testDataHelpers = {
    /**
     * Get a random valid user
     * @returns {Object} Random valid user data
     */
    getRandomValidUser() {
        const users = Object.values(testData.validUsers);
        return users[Math.floor(Math.random() * users.length)];
    },

    /**
     * Get a random invalid user
     * @returns {Object} Random invalid user data
     */
    getRandomInvalidUser() {
        const users = Object.values(testData.invalidUsers);
        return users[Math.floor(Math.random() * users.length)];
    },

    /**
     * Get a random invalid email
     * @returns {Object} Random invalid email test case
     */
    getRandomInvalidEmail() {
        const emails = testData.invalidEmails;
        return emails[Math.floor(Math.random() * emails.length)];
    },

    /**
     * Generate random email
     * @returns {string} Random email address
     */
    generateRandomEmail() {
        const timestamp = Date.now();
        return `test${timestamp}@example.com`;
    },

    /**
     * Generate random password
     * @returns {string} Random password
     */
    generateRandomPassword() {
        const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*';
        let password = '';
        for (let i = 0; i < 12; i++) {
            password += chars.charAt(Math.floor(Math.random() * chars.length));
        }
        return password;
    },

    /**
     * Get test data for specific scenario
     * @param {string} scenarioName - Name of the test scenario
     * @returns {Object} Test scenario data
     */
    getScenarioData(scenarioName) {
        return testData.testScenarios[scenarioName];
    },

    /**
     * Get expected text for UI element
     * @param {string} key - Text key
     * @returns {string} Expected text
     */
    getExpectedText(key) {
        return testData.expectedTexts[key];
    },

    /**
     * Get performance expectation
     * @param {string} metric - Performance metric name
     * @returns {number} Expected time in milliseconds
     */
    getPerformanceExpectation(metric) {
        return testData.performanceExpectations[metric];
    }
};

module.exports = {
    testData,
    testDataHelpers
};
