# 🏠 Suliit Home Page Automation Tests

## Overview
Comprehensive automation test suite for the Suliit app home page functionality, covering all tabs, navigation, drawer menu, cart integration, and user interactions.

## 📁 Test Structure

### Page Object Model
```
tests/pageobjects/
├── BasePage.js          # Base page with common methods
├── LoginPage.js         # Login-specific page object
└── HomePage.js          # Home page-specific page object (NEW)
```

### Test Files
```
tests/specs/
├── login.test.js        # Login functionality tests
└── home.test.js         # Home page functionality tests (NEW)

tests/helpers/
├── setup.js            # Global test setup
├── testData.js         # Test data and scenarios
├── loginHelpers.js     # Login-specific helpers
└── homeHelpers.js      # Home page-specific helpers (NEW)
```

## 🎯 Home Page Test Categories

### 1. Layout and Structure Tests
- **Home page layout validation**
- **Bottom navigation bar verification**
- **Floating cart button display**
- **Tab text labels validation**
- **Drawer menu structure**

### 2. Bottom Navigation Functionality
- **Home tab navigation and content**
- **Categories tab navigation and content**
- **Offers tab navigation and content**
- **More tab navigation and content**
- **Sequential tab navigation**
- **Rapid tab switching handling**

### 3. Cart Button Functionality
- **Cart button visibility and accessibility**
- **Cart navigation functionality**
- **Multiple cart button taps handling**
- **Cart integration testing**

### 4. Drawer Menu Functionality
- **Drawer open/close operations**
- **Drawer menu items navigation**
- **Drawer header and items display**
- **Rapid drawer operations handling**
- **Authentication-dependent menu items**

### 5. Page Content Loading
- **Home page content loading**
- **Categories page content loading**
- **Offers page content loading**
- **More page content loading**
- **Loading states handling**
- **Network delay resilience**

### 6. Navigation and Back Button
- **Back button from different tabs**
- **Double back to exit functionality**
- **Return to home tab navigation**
- **Navigation state management**

### 7. App Bar and Header
- **App bar elements display**
- **Menu button functionality**
- **Search functionality (if available)**
- **Notification access**

### 8. Performance and Responsiveness
- **Home page load time benchmarks**
- **Tab switching animations**
- **User interaction responsiveness**
- **Memory pressure handling**

### 9. Error Handling and Edge Cases
- **Rapid user interactions**
- **App lifecycle changes**
- **Screen orientation handling**
- **Network error recovery**
- **Memory pressure graceful handling**

### 10. Accessibility and Usability
- **Navigation element accessibility**
- **Visual feedback for interactions**
- **Screen size adaptation**
- **User experience validation**

### 11. Authentication Integration
- **Authentication-dependent features**
- **Profile access through drawer**
- **Logout functionality**
- **Cart access with auth states**

### 12. Feature Integration
- **Cart functionality integration**
- **Category browsing integration**
- **Offers and promotions integration**
- **User settings integration**

## 🔧 Key Components Tested

### Bottom Navigation (5 Tabs)
```javascript
// Tab structure from HomeController
tabs = [
    "Home",      // HomeMain page
    "Categories", // Categories page  
    "Cart",      // Floating cart button
    "Offers",    // Coupons page
    "More"       // More options page
]
```

### Drawer Menu Items
```javascript
// Common drawer items tested
drawerItems = [
    "home",
    "allBrands", 
    "allCategories",
    "profile",      // Auth-dependent
    "orders",       // Auth-dependent
    "wishlist",     // Auth-dependent
    "notifications", // Auth-dependent
    "settings",
    "logout"        // Auth-dependent
]
```

### Page Components
```javascript
// Main page components
pages = [
    HomeMain,    // Main home page with products
    Categories,  // Category browsing page
    Coupons,     // Offers and coupons page
    More         // User settings and options
]
```

## 🚀 Running Home Page Tests

### Platform-Specific Execution
```bash
# Run on Android
npm run test:android

# Run on iOS  
npm run test:ios

# Run on both platforms
npm run test:both
```

### Specific Test Execution
```bash
# Run only home page tests
npx wdio run wdio.android.conf.js --spec tests/specs/home.test.js
npx wdio run wdio.ios.conf.js --spec tests/specs/home.test.js
```

### Using Interactive Runner
```bash
# Start interactive menu
node run.js

# Select platform and tests
# Or use direct commands:
node run.js test:android
node run.js test:ios
```

## 📊 Test Scenarios Covered

### Happy Path Scenarios
1. **Complete Navigation Flow**
   - Navigate through all tabs sequentially
   - Verify content loading for each tab
   - Validate tab switching animations
   - Confirm proper visual feedback

2. **Drawer Menu Navigation**
   - Open/close drawer menu
   - Navigate through all menu items
   - Test authentication-dependent items
   - Verify proper navigation handling

3. **Cart Integration**
   - Access cart via floating button
   - Test cart button from different tabs
   - Verify cart navigation consistency
   - Test cart button visual prominence

### Error Scenarios
1. **Rapid Interactions**
   - Rapid tab switching
   - Multiple cart button taps
   - Fast drawer open/close operations
   - Stress testing user interactions

2. **App Lifecycle**
   - App backgrounding/foregrounding
   - Screen orientation changes
   - Memory pressure scenarios
   - Network connectivity issues

3. **Edge Cases**
   - Authentication state changes
   - Content loading failures
   - Navigation state corruption
   - UI responsiveness under load

## 🎯 Helper Functions

### Navigation Testing
```javascript
// Test complete navigation flow
await homeHelpers.testCompleteNavigationFlow(homePage);

// Test drawer menu comprehensive functionality
await homeHelpers.testDrawerMenuComprehensive(homePage);

// Test bottom navigation bar responsiveness
await homeHelpers.testBottomNavBarResponsiveness(homePage);
```

### Performance Testing
```javascript
// Test performance benchmarks
const benchmarks = await homeHelpers.testPerformanceBenchmarks(homePage);

// Test error recovery and resilience
await homeHelpers.testErrorRecoveryResilience(homePage);
```

### Authentication Testing
```javascript
// Test authentication integration
await homeHelpers.testAuthenticationIntegration(homePage);

// Validate critical path functionality
const results = await homeHelpers.validateCriticalPath(homePage);
```

## 📸 Screenshot Management

### Automatic Screenshots
- Before each test execution
- After each test completion
- During tab navigation
- On test failures
- For each major interaction

### Screenshot Organization
```
screenshots/
├── android/
│   ├── home_*.png
│   ├── drawer_*.png
│   ├── cart_*.png
│   └── FAILED_*.png
└── ios/
    ├── home_*.png
    ├── drawer_*.png
    ├── cart_*.png
    └── FAILED_*.png
```

## 📈 Performance Benchmarks

### Expected Performance Metrics
```javascript
performanceExpectations = {
    homePageLoad: 5000,      // 5 seconds max
    tabSwitching: 3000,      // 3 seconds max
    drawerOperations: 2000,  // 2 seconds max
    cartButton: 3000,        // 3 seconds max
    contentLoading: 10000    // 10 seconds max
}
```

### Monitoring Points
- Home page initial load time
- Tab switching response time
- Drawer animation duration
- Cart button response time
- Content loading completion time

## 🔍 Element Selectors

### Flutter-Specific Selectors
```javascript
// Main structure selectors
this.homeScaffold = byType('Scaffold');
this.homeTabBarView = byType('TabBarView');
this.bottomNavBar = byType('BuildBottomNavBar');

// Tab item selectors
this.homeTab = byType('BuildTabItem').at(0);
this.categoriesTab = byType('BuildTabItem').at(1);
this.cartButtonWidget = byType('CartButtonWidget');

// Page content selectors
this.homeMainPage = byType('HomeMain');
this.categoriesPage = byType('Categories');
this.couponsPage = byType('Coupons');
this.morePage = byType('More');

// Drawer selectors
this.drawer = byType('BuildDrawer');
this.drawerHeader = byType('BuildDrawerHeader');
this.drawerItem = byType('BuildDrawerItem');
```

## 🛠️ Customization Guide

### Adding New Test Cases
1. **Identify new functionality** in home page
2. **Add selectors** to `HomePage.js` page object
3. **Create test methods** in `homeHelpers.js` if needed
4. **Write test cases** in `home.test.js`
5. **Update documentation** with new test coverage

### Modifying Selectors
1. **Analyze Flutter widget tree** for home page
2. **Update selectors** in `HomePage.js`
3. **Test selector accuracy** with individual elements
4. **Validate across platforms** (Android/iOS)

### Adding Performance Tests
1. **Define performance metrics** in helper functions
2. **Implement timing measurements** around operations
3. **Set performance thresholds** based on requirements
4. **Add assertions** for performance expectations

## 🚨 Troubleshooting

### Common Issues

#### Tab Navigation Not Working
1. **Check tab selectors** - Verify `BuildTabItem` indices
2. **Verify tab controller** - Ensure `TabController` is active
3. **Check animation timing** - Add appropriate waits
4. **Validate tab state** - Use tab-specific validators

#### Drawer Menu Issues
1. **Check drawer opening** - Verify swipe gesture or menu button
2. **Validate drawer items** - Ensure drawer item selectors are correct
3. **Test authentication state** - Some items are auth-dependent
4. **Check drawer closing** - Verify close gesture works

#### Cart Button Problems
1. **Verify cart button visibility** - Check `CartButtonWidget` selector
2. **Test cart navigation** - Ensure cart route is accessible
3. **Check floating position** - Verify button is properly positioned
4. **Validate cart integration** - Test cart functionality end-to-end

#### Content Loading Issues
1. **Check loading states** - Handle `BuildLoadingHomeView`
2. **Increase timeouts** - Allow more time for content loading
3. **Verify network connectivity** - Test with different network conditions
4. **Check error handling** - Ensure graceful failure handling

## 📋 Maintenance Checklist

### Regular Updates
- [ ] Update selectors after app UI changes
- [ ] Verify tab structure matches app updates
- [ ] Check drawer menu items for new features
- [ ] Update performance benchmarks
- [ ] Review authentication-dependent features

### After App Changes
- [ ] Re-run full home page test suite
- [ ] Update page object selectors if needed
- [ ] Modify test data if navigation changed
- [ ] Update screenshots baseline
- [ ] Validate new features integration

## 🎉 Success Criteria

### Test Coverage
- ✅ All navigation tabs tested
- ✅ All drawer menu items tested
- ✅ Cart integration validated
- ✅ Performance benchmarks met
- ✅ Error handling verified
- ✅ Authentication scenarios covered

### Quality Metrics
- **Test Pass Rate**: >95%
- **Execution Time**: <15 minutes
- **Screenshot Coverage**: 100%
- **Performance Compliance**: All benchmarks met
- **Cross-Platform Compatibility**: Android & iOS

---

**Home page automation tests provide comprehensive coverage of the main user interface and navigation functionality!** 🚀

## Quick Start Commands

```bash
# Setup and run home page tests
cd automation
npm run test:android  # Test on Android
npm run test:ios      # Test on iOS
npm run report:serve:android  # View Android results
npm run report:serve:ios      # View iOS results
```
