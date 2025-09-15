#!/bin/bash

# Suliit Automation Test Runner
# This script helps run different types of tests for the Flutter app

set -e

echo "🚀 Suliit Automation Test Runner"
echo "================================="

# Function to check if Appium server is running
check_appium_server() {
    if curl -s http://127.0.0.1:4723/wd/hub/status > /dev/null 2>&1; then
        echo "✅ Appium server is running"
        return 0
    else
        echo "❌ Appium server is not running"
        return 1
    fi
}

# Function to start Appium server
start_appium_server() {
    echo "🔄 Starting Appium server..."
        appium --relaxed-security --session-override > automation/logs/appium.log 2>&1 &
    APPIUM_PID=$!
    echo "Appium PID: $APPIUM_PID"
    
    # Wait for server to start
    sleep 5
    
    if check_appium_server; then
        echo "✅ Appium server started successfully"
        return 0
    else
        echo "❌ Failed to start Appium server"
        return 1
    fi
}

# Function to stop Appium server
stop_appium_server() {
    if [ ! -z "$APPIUM_PID" ]; then
        echo "🛑 Stopping Appium server (PID: $APPIUM_PID)..."
        kill $APPIUM_PID 2>/dev/null || true
    fi
    
    # Also kill any other Appium processes
    pkill -f "appium" 2>/dev/null || true
    echo "✅ Appium server stopped"
}

# Function to run Flutter Driver tests
run_flutter_driver_tests() {
    echo "🧪 Running Flutter Driver tests..."
    
    # Build the app for testing
    echo "📱 Building app for testing..."
    flutter build apk --debug
    
    # Run Flutter Driver tests
    flutter drive --target=automation/tests/test_driver/app.dart
}

# Function to run Integration tests
run_integration_tests() {
    echo "🧪 Running Integration tests..."
    
    # Get dependencies
    flutter pub get
    
    # Note: Integration tests removed - using Appium for automation testing
    echo "Integration tests not configured - use Appium automation instead"
}

# Function to run Appium tests (placeholder for future implementation)
run_appium_tests() {
    echo "🧪 Running Appium tests..."
    echo "Note: Appium tests require additional setup and test scripts"
    echo "This is a placeholder for future Appium test implementation"
}

# Main menu
show_menu() {
    echo ""
    echo "Select test type to run:"
    echo "1) Flutter Driver tests"
    echo "2) Integration tests"
    echo "3) Start Appium server"
    echo "4) Stop Appium server"
    echo "5) Check Appium Doctor"
    echo "6) Run all tests"
    echo "7) Exit"
    echo ""
}

# Trap to ensure cleanup on exit
trap stop_appium_server EXIT

# Main script logic
case "${1:-menu}" in
    "driver")
        run_flutter_driver_tests
        ;;
    "integration")
        run_integration_tests
        ;;
    "appium-start")
        start_appium_server
        ;;
    "appium-stop")
        stop_appium_server
        ;;
    "doctor")
        echo "🩺 Running Appium Doctor..."
        appium-doctor --android --ios
        ;;
    "all")
        echo "🚀 Running all tests..."
        run_integration_tests
        if ! check_appium_server; then
            start_appium_server
        fi
        run_flutter_driver_tests
        ;;
    "menu"|*)
        while true; do
            show_menu
            read -p "Enter your choice (1-7): " choice
            
            case $choice in
                1)
                    run_flutter_driver_tests
                    ;;
                2)
                    run_integration_tests
                    ;;
                3)
                    start_appium_server
                    echo "Press Enter to continue..."
                    read
                    ;;
                4)
                    stop_appium_server
                    ;;
                5)
                    echo "🩺 Running Appium Doctor..."
                    appium-doctor --android --ios
                    echo "Press Enter to continue..."
                    read
                    ;;
                6)
                    echo "🚀 Running all tests..."
                    run_integration_tests
                    if ! check_appium_server; then
                        start_appium_server
                    fi
                    run_flutter_driver_tests
                    ;;
                7)
                    echo "👋 Goodbye!"
                    exit 0
                    ;;
                *)
                    echo "❌ Invalid option. Please try again."
                    ;;
            esac
        done
        ;;
esac
