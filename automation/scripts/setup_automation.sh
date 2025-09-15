#!/bin/bash

# Suliit Automation Testing Setup Script
# This script helps set up the environment for automation testing

set -e

echo "🚀 Suliit Automation Testing Setup"
echo "=================================="

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${GREEN}✅ $1${NC}"
}

print_warning() {
    echo -e "${YELLOW}⚠️  $1${NC}"
}

print_error() {
    echo -e "${RED}❌ $1${NC}"
}

print_info() {
    echo -e "${BLUE}ℹ️  $1${NC}"
}

# Check if command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Check Flutter installation
check_flutter() {
    if command_exists flutter; then
        FLUTTER_VERSION=$(flutter --version | head -n 1 | cut -d ' ' -f 2)
        print_status "Flutter is installed: $FLUTTER_VERSION"
        
        # Check if Flutter version is compatible
        if [[ "$FLUTTER_VERSION" < "3.35.0" ]]; then
            print_warning "Flutter version $FLUTTER_VERSION may have dependency conflicts"
            print_info "Consider upgrading Flutter: flutter upgrade"
        fi
        
        return 0
    else
        print_error "Flutter is not installed or not in PATH"
        return 1
    fi
}

# Check Node.js and npm
check_node() {
    if command_exists node; then
        NODE_VERSION=$(node --version)
        print_status "Node.js is installed: $NODE_VERSION"
    else
        print_error "Node.js is not installed"
        echo "Please install Node.js from: https://nodejs.org/"
        return 1
    fi
    
    if command_exists npm; then
        NPM_VERSION=$(npm --version)
        print_status "npm is installed: $NPM_VERSION"
    else
        print_error "npm is not installed"
        return 1
    fi
}

# Check Java installation
check_java() {
    if command_exists java; then
        JAVA_VERSION=$(java -version 2>&1 | head -n 1 | cut -d '"' -f 2)
        print_status "Java is installed: $JAVA_VERSION"
        
        if [ -z "$JAVA_HOME" ]; then
            print_warning "JAVA_HOME environment variable is not set"
            print_info "Set JAVA_HOME in your shell profile (.zshrc, .bash_profile, etc.)"
            
            # Try to find Java installation
            if [[ "$OSTYPE" == "darwin"* ]]; then
                JAVA_PATH=$(/usr/libexec/java_home 2>/dev/null)
                if [ $? -eq 0 ]; then
                    print_info "Suggested JAVA_HOME: $JAVA_PATH"
                    echo "Add this to your shell profile: export JAVA_HOME=\"$JAVA_PATH\""
                fi
            fi
        else
            print_status "JAVA_HOME is set: $JAVA_HOME"
        fi
    else
        print_error "Java is not installed"
        print_info "Install Java JDK 8 or higher"
    fi
}

# Check Android SDK
check_android() {
    if [ -n "$ANDROID_HOME" ]; then
        print_status "ANDROID_HOME is set: $ANDROID_HOME"
        
        # Check if Android SDK tools exist
        if [ -f "$ANDROID_HOME/platform-tools/adb" ]; then
            print_status "Android SDK platform-tools found"
        else
            print_warning "Android SDK platform-tools not found in $ANDROID_HOME"
        fi
    else
        print_warning "ANDROID_HOME environment variable is not set"
        print_info "Set ANDROID_HOME to your Android SDK installation path"
        
        # Try to find Android SDK
        POSSIBLE_PATHS=(
            "$HOME/Library/Android/sdk"
            "$HOME/Android/Sdk"
            "/usr/local/android-sdk"
        )
        
        for path in "${POSSIBLE_PATHS[@]}"; do
            if [ -d "$path" ]; then
                print_info "Found possible Android SDK at: $path"
                echo "Add this to your shell profile: export ANDROID_HOME=\"$path\""
                echo "Also add: export PATH=\"\$PATH:\$ANDROID_HOME/platform-tools:\$ANDROID_HOME/tools\""
                break
            fi
        done
    fi
}

# Check Xcode (macOS only)
check_xcode() {
    if [[ "$OSTYPE" == "darwin"* ]]; then
        if command_exists xcode-select; then
            XCODE_PATH=$(xcode-select -p 2>/dev/null)
            if [ $? -eq 0 ]; then
                print_status "Xcode Command Line Tools are installed: $XCODE_PATH"
            else
                print_warning "Xcode Command Line Tools are not installed"
                print_info "Install with: xcode-select --install"
            fi
        fi
        
        if [ -d "/Applications/Xcode.app" ]; then
            print_status "Xcode is installed"
        else
            print_warning "Xcode is not installed"
            print_info "Install Xcode from the Mac App Store"
        fi
    else
        print_info "Skipping Xcode check (not on macOS)"
    fi
}

# Install Appium and drivers
install_appium() {
    print_info "Installing Appium and drivers..."
    
    # Install Appium
    if ! command_exists appium; then
        npm install -g appium@next
        print_status "Appium installed"
    else
        print_status "Appium is already installed"
    fi
    
    # Install Appium Doctor
    if ! command_exists appium-doctor; then
        npm install -g @appium/doctor
        print_status "Appium Doctor installed"
    else
        print_status "Appium Doctor is already installed"
    fi
    
    # Install drivers
    print_info "Installing Appium drivers..."
    appium driver install uiautomator2 || print_warning "Failed to install uiautomator2 driver"
    appium driver install xcuitest || print_warning "Failed to install xcuitest driver"
    
    print_status "Appium setup completed"
}

# Update Flutter dependencies
update_dependencies() {
    print_info "Updating Flutter dependencies..."
    
    # Clean previous builds
    flutter clean
    
    # Get dependencies
    if flutter pub get; then
        print_status "Flutter dependencies updated successfully"
    else
        print_warning "Some Flutter dependencies may have conflicts"
        print_info "You may need to update Flutter SDK: flutter upgrade"
    fi
}

# Create environment setup instructions
create_env_instructions() {
    cat > environment_setup.md << 'EOF'
# Environment Setup Instructions

## Required Environment Variables

Add the following to your shell profile (`.zshrc`, `.bash_profile`, etc.):

### Android Development
```bash
# Android SDK (update path as needed)
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools"
```

### Java Development
```bash
# Java (update path as needed)
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-11.0.12.jdk/Contents/Home"
export PATH="$PATH:$JAVA_HOME/bin"
```

## After updating your shell profile:
1. Restart your terminal or run: `source ~/.zshrc` (or your shell profile)
2. Verify setup: `./setup_automation.sh verify`

## Install Android SDK
If you don't have Android SDK installed:
1. Download Android Studio from: https://developer.android.com/studio
2. Install Android Studio and follow the setup wizard
3. Open Android Studio and install SDK components
4. Set ANDROID_HOME environment variable

## Install Java JDK
If you don't have Java installed:
1. Download from: https://adoptopenjdk.net/
2. Install and set JAVA_HOME environment variable

## Verify Installation
Run: `appium-doctor --android --ios`
EOF
    
    print_status "Created environment_setup.md with detailed instructions"
}

# Main setup function
main_setup() {
    echo ""
    print_info "Checking system requirements..."
    
    check_flutter
    check_node
    check_java
    check_android
    check_xcode
    
    echo ""
    print_info "Installing Appium components..."
    install_appium
    
    echo ""
    print_info "Updating project dependencies..."
    update_dependencies
    
    echo ""
    print_info "Creating setup instructions..."
    create_env_instructions
    
    echo ""
    print_status "Setup completed!"
    echo ""
    print_info "Next steps:"
    echo "1. Review environment_setup.md for environment variable setup"
    echo "2. Set required environment variables in your shell profile"
    echo "3. Restart your terminal"
    echo "4. Run: appium-doctor --android --ios"
    echo "5. Run: ./test_scripts/run_tests.sh"
}

# Verify setup function
verify_setup() {
    echo ""
    print_info "Verifying automation testing setup..."
    
    check_flutter
    check_node
    check_java
    check_android
    check_xcode
    
    echo ""
    print_info "Running Appium Doctor..."
    if command_exists appium-doctor; then
        appium-doctor --android --ios
    else
        print_error "Appium Doctor not found"
    fi
    
    echo ""
    print_info "Checking Flutter Doctor..."
    flutter doctor
}

# Script execution
case "${1:-setup}" in
    "setup"|"install")
        main_setup
        ;;
    "verify"|"check")
        verify_setup
        ;;
    "env"|"environment")
        create_env_instructions
        ;;
    *)
        echo "Usage: $0 [setup|verify|env]"
        echo ""
        echo "Commands:"
        echo "  setup    - Install and configure automation testing (default)"
        echo "  verify   - Verify current setup"
        echo "  env      - Create environment setup instructions"
        ;;
esac
