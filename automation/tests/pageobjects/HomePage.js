/**
 * Home Page Object for Suliit App
 * Contains all selectors and methods for home page automation
 */

const BasePage = require('./BasePage');

class HomePage extends BasePage {
    constructor() {
        super();
        
        // Main home page selectors
        this.homeScaffold = byType('Scaffold');
        this.homeTabBarView = byType('TabBarView');
        this.defaultTabController = byType('DefaultTabController');
        
        // Bottom Navigation Bar selectors
        this.bottomNavBar = byType('BuildBottomNavBar');
        this.animatedBottomNavBar = byType('AnimatedBottomNavigationBar');
        
        // Tab items (5 tabs: Home, Categories, Cart, Offers, More)
        this.homeTab = byType('BuildTabItem').at(0);
        this.categoriesTab = byType('BuildTabItem').at(1);
        this.cartTab = byType('BuildTabItem').at(2); // This is the floating cart button
        this.offersTab = byType('BuildTabItem').at(3);
        this.moreTab = byType('BuildTabItem').at(4);
        
        // Tab text labels
        this.homeTabText = byText('home');
        this.categoriesTabText = byText('categories');
        this.cartTabText = byText('cart');
        this.offersTabText = byText('offers');
        this.moreTabText = byText('more');
        
        // Cart Button Widget (floating cart button)
        this.cartButtonWidget = byType('CartButtonWidget');
        this.floatingCartButton = byType('GestureDetector');
        
        // Drawer selectors
        this.drawer = byType('BuildDrawer');
        this.drawerHeader = byType('BuildDrawerHeader');
        this.drawerItem = byType('BuildDrawerItem');
        
        // Drawer menu items
        this.drawerHomeItem = byText('home');
        this.drawerBrandsItem = byText('allBrands');
        this.drawerCategoriesItem = byText('allCategories');
        this.drawerProfileItem = byText('profile');
        this.drawerOrdersItem = byText('orders');
        this.drawerWishlistItem = byText('wishlist');
        this.drawerNotificationsItem = byText('notifications');
        this.drawerSettingsItem = byText('settings');
        this.drawerLogoutItem = byText('logout');
        
        // App Bar elements
        this.appBar = byType('BuildHomeAppBar');
        this.menuButton = byType('IconButton');
        this.searchIcon = byType('Icon');
        this.notificationIcon = byType('Icon');
        
        // Page content areas
        this.homeMainPage = byType('HomeMain');
        this.categoriesPage = byType('Categories');
        this.couponsPage = byType('Coupons');
        this.morePage = byType('More');
        
        // Home Main page specific elements
        this.homeMainAppBar = byType('BuildHomeMainAppBar');
        this.homeView = byType('BuildHomeView');
        this.loadingHomeView = byType('BuildLoadingHomeView');
        
        // Categories page specific elements
        this.categorySearchView = byType('BuildCategorySearchView');
        this.categorySideItem = byType('BuildCategorySideItem');
        
        // Search functionality
        this.searchController = byType('TextEditingController');
        this.searchField = byType('TextField');
        
        // Generic UI elements
        this.gestureDetector = byType('GestureDetector');
        this.willPopScope = byType('WillPopScope');
        this.safeArea = byType('SafeArea');
    }

    /**
     * Navigate to home page
     */
    async navigateToHome() {
        await this.waitForAppReady();
        await this.waitForElement(this.homeScaffold);
    }

    /**
     * Wait for home page to be fully loaded
     */
    async waitForHomePageLoaded() {
        await this.waitForElement(this.bottomNavBar);
        await this.waitForElement(this.homeTabBarView);
        await this.wait(1000); // Wait for animations
    }

    /**
     * Tap on home tab
     */
    async tapHomeTab() {
        await this.tap(this.homeTab);
        await this.wait(500);
    }

    /**
     * Tap on categories tab
     */
    async tapCategoriesTab() {
        await this.tap(this.categoriesTab);
        await this.wait(500);
    }

    /**
     * Tap on cart button (floating button)
     */
    async tapCartButton() {
        await this.tap(this.cartButtonWidget);
        await this.wait(1000);
    }

    /**
     * Tap on offers tab
     */
    async tapOffersTab() {
        await this.tap(this.offersTab);
        await this.wait(500);
    }

    /**
     * Tap on more tab
     */
    async tapMoreTab() {
        await this.tap(this.moreTab);
        await this.wait(500);
    }

    /**
     * Open drawer menu
     */
    async openDrawer() {
        // Swipe from left edge or tap menu button
        await this.swipeRight();
        await this.wait(1000);
    }

    /**
     * Close drawer menu
     */
    async closeDrawer() {
        await this.swipeLeft();
        await this.wait(500);
    }

    /**
     * Tap on a drawer menu item
     * @param {string} itemText - Text of the drawer item
     */
    async tapDrawerItem(itemText) {
        await this.openDrawer();
        const drawerItem = byText(itemText);
        await this.tap(drawerItem);
        await this.wait(1000);
    }

    /**
     * Navigate through all tabs
     */
    async navigateThroughAllTabs() {
        const tabs = [
            { method: 'tapHomeTab', name: 'Home' },
            { method: 'tapCategoriesTab', name: 'Categories' },
            { method: 'tapOffersTab', name: 'Offers' },
            { method: 'tapMoreTab', name: 'More' }
        ];

        for (const tab of tabs) {
            await this[tab.method]();
            console.log(`✅ Navigated to ${tab.name} tab`);
            await this.wait(1000);
        }
    }

    /**
     * Test cart button functionality
     */
    async testCartButton() {
        await this.tapCartButton();
        // Should navigate to cart page
        await this.wait(2000);
    }

    /**
     * Check if home tab is active
     * @returns {boolean} True if home tab is active
     */
    async isHomeTabActive() {
        return await this.isElementPresent(this.homeMainPage);
    }

    /**
     * Check if categories tab is active
     * @returns {boolean} True if categories tab is active
     */
    async isCategoriesTabActive() {
        return await this.isElementPresent(this.categoriesPage);
    }

    /**
     * Check if offers tab is active
     * @returns {boolean} True if offers tab is active
     */
    async isOffersTabActive() {
        return await this.isElementPresent(this.couponsPage);
    }

    /**
     * Check if more tab is active
     * @returns {boolean} True if more tab is active
     */
    async isMoreTabActive() {
        return await this.isElementPresent(this.morePage);
    }

    /**
     * Validate bottom navigation bar
     */
    async validateBottomNavBar() {
        await this.waitForElement(this.bottomNavBar);
        
        // Check all tab elements are present
        expect(await this.isElementPresent(this.homeTab)).to.be.true;
        expect(await this.isElementPresent(this.categoriesTab)).to.be.true;
        expect(await this.isElementPresent(this.cartButtonWidget)).to.be.true;
        expect(await this.isElementPresent(this.offersTab)).to.be.true;
        expect(await this.isElementPresent(this.moreTab)).to.be.true;
    }

    /**
     * Validate drawer menu
     */
    async validateDrawerMenu() {
        await this.openDrawer();
        
        // Check drawer elements
        expect(await this.isElementPresent(this.drawer)).to.be.true;
        expect(await this.isElementPresent(this.drawerHeader)).to.be.true;
        
        // Check common drawer items
        const commonItems = [
            this.drawerHomeItem,
            this.drawerBrandsItem,
            this.drawerCategoriesItem
        ];

        for (const item of commonItems) {
            expect(await this.isElementPresent(item)).to.be.true;
        }
        
        await this.closeDrawer();
    }

    /**
     * Test back button functionality
     */
    async testBackButtonFunctionality() {
        // Navigate to a different tab first
        await this.tapCategoriesTab();
        await this.wait(500);
        
        // Press back button (simulate Android back button)
        await browser.back();
        await this.wait(500);
        
        // Should return to home tab
        expect(await this.isHomeTabActive()).to.be.true;
    }

    /**
     * Test double back to exit functionality
     */
    async testDoubleBackToExit() {
        // Make sure we're on home tab
        await this.tapHomeTab();
        await this.wait(500);
        
        // First back press - should show toast
        await browser.back();
        await this.wait(1000);
        
        // Second back press - should exit (in real scenario)
        // Note: In test environment, this might not actually exit
        await browser.back();
        await this.wait(500);
    }

    /**
     * Search functionality test
     */
    async testSearchFunctionality(searchTerm) {
        // Look for search field or search icon
        if (await this.isElementPresent(this.searchField)) {
            await this.enterText(this.searchField, searchTerm);
            await this.wait(1000);
        }
    }

    /**
     * Test app bar functionality
     */
    async testAppBarFunctionality() {
        // Test menu button (drawer)
        await this.openDrawer();
        await this.closeDrawer();
        
        // Test other app bar elements if present
        if (await this.isElementPresent(this.notificationIcon)) {
            await this.tap(this.notificationIcon);
            await this.wait(1000);
        }
    }

    /**
     * Validate home page layout
     */
    async validateHomePageLayout() {
        await this.waitForHomePageLoaded();
        
        // Check main structure
        expect(await this.isElementPresent(this.homeScaffold)).to.be.true;
        expect(await this.isElementPresent(this.defaultTabController)).to.be.true;
        expect(await this.isElementPresent(this.homeTabBarView)).to.be.true;
        expect(await this.isElementPresent(this.bottomNavBar)).to.be.true;
        
        // Check floating cart button
        expect(await this.isElementPresent(this.cartButtonWidget)).to.be.true;
    }

    /**
     * Test tab switching animations
     */
    async testTabSwitchingAnimations() {
        const tabs = ['tapHomeTab', 'tapCategoriesTab', 'tapOffersTab', 'tapMoreTab'];
        
        for (const tabMethod of tabs) {
            await this[tabMethod]();
            await this.wait(300); // Wait for animation
        }
    }

    /**
     * Test page content loading
     */
    async testPageContentLoading() {
        // Test home page content
        await this.tapHomeTab();
        if (await this.isElementPresent(this.loadingHomeView)) {
            // Wait for loading to complete
            await this.waitForElement(this.homeView, 10000);
        }
        
        // Test categories page content
        await this.tapCategoriesTab();
        await this.waitForElement(this.categorySearchView, 5000);
        
        // Test other pages
        await this.tapOffersTab();
        await this.wait(1000);
        
        await this.tapMoreTab();
        await this.wait(1000);
    }

    /**
     * Test authentication-dependent features
     */
    async testAuthenticationFeatures() {
        // Test features that require authentication
        // This would depend on the current authentication state
        
        // Test cart access
        await this.tapCartButton();
        await this.wait(2000);
        
        // Test profile access through drawer
        await this.tapDrawerItem('profile');
        await this.wait(2000);
    }

    /**
     * Test error handling and edge cases
     */
    async testErrorHandling() {
        // Test rapid tab switching
        for (let i = 0; i < 5; i++) {
            await this.tapHomeTab();
            await this.wait(100);
            await this.tapCategoriesTab();
            await this.wait(100);
        }
        
        // Test drawer open/close rapidly
        for (let i = 0; i < 3; i++) {
            await this.openDrawer();
            await this.wait(200);
            await this.closeDrawer();
            await this.wait(200);
        }
    }

    /**
     * Take screenshot of current tab
     * @param {string} tabName - Name of the current tab
     */
    async takeTabScreenshot(tabName) {
        await this.takeScreenshot(`home_${tabName.toLowerCase()}_tab`);
    }

    /**
     * Test all drawer menu items
     */
    async testAllDrawerMenuItems() {
        const drawerItems = [
            { text: 'home', name: 'Home' },
            { text: 'allBrands', name: 'All Brands' },
            { text: 'allCategories', name: 'All Categories' }
        ];

        for (const item of drawerItems) {
            await this.tapDrawerItem(item.text);
            console.log(`✅ Tested drawer item: ${item.name}`);
            await this.wait(1000);
            
            // Navigate back to home
            await this.navigateToHome();
            await this.wait(500);
        }
    }

    /**
     * Validate tab text labels
     */
    async validateTabTextLabels() {
        const expectedTexts = [
            this.homeTabText,
            this.categoriesTabText,
            this.cartTabText,
            this.offersTabText,
            this.moreTabText
        ];

        for (const textElement of expectedTexts) {
            expect(await this.isElementPresent(textElement)).to.be.true;
        }
    }

    /**
     * Test home page performance
     */
    async testHomePagePerformance() {
        const startTime = Date.now();
        
        await this.navigateToHome();
        await this.waitForHomePageLoaded();
        
        const loadTime = Date.now() - startTime;
        console.log(`📊 Home page load time: ${loadTime}ms`);
        
        // Assert reasonable load time (adjust threshold as needed)
        expect(loadTime).to.be.lessThan(5000);
    }

    /**
     * Test app lifecycle with home page
     */
    async testAppLifecycle() {
        await this.navigateToHome();
        
        // Background app
        await browser.background(2);
        await this.wait(1000);
        
        // Verify app is still functional
        const health = await browser.execute('flutter:checkHealth');
        expect(health).to.be.true;
        
        // Verify home page is still displayed
        expect(await this.isElementPresent(this.homeScaffold)).to.be.true;
    }
}

module.exports = HomePage;
