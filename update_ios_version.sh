#!/bin/bash

# Script to sync version from pubspec.yaml to iOS native files
# Usage: ./update_ios_version.sh

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}🔄 Updating iOS version from pubspec.yaml...${NC}"

# Check if pubspec.yaml exists
if [ ! -f "pubspec.yaml" ]; then
    echo -e "${RED}❌ Error: pubspec.yaml not found in current directory${NC}"
    exit 1
fi

# Extract version from pubspec.yaml
VERSION_LINE=$(grep "^version:" pubspec.yaml)
if [ -z "$VERSION_LINE" ]; then
    echo -e "${RED}❌ Error: Version not found in pubspec.yaml${NC}"
    exit 1
fi

# Parse version (format: version: 4.6.24+1)
# shellcheck disable=SC2001
FULL_VERSION=$(echo "$VERSION_LINE" | sed 's/version: *//')
VERSION_NAME=$(echo "$FULL_VERSION" | cut -d'+' -f1)
BUILD_NUMBER=$(echo "$FULL_VERSION" | cut -d'+' -f2)

echo -e "${YELLOW}📋 Found version in pubspec.yaml:${NC}"
echo -e "   Version Name: ${GREEN}$VERSION_NAME${NC}"
echo -e "   Build Number: ${GREEN}$BUILD_NUMBER${NC}"

# iOS Info.plist path
IOS_INFO_PLIST="ios/Runner/Info.plist"

# Check if iOS directory exists
if [ ! -d "ios" ]; then
    echo -e "${RED}❌ Error: iOS directory not found${NC}"
    exit 1
fi

if [ ! -f "$IOS_INFO_PLIST" ]; then
    echo -e "${RED}❌ Error: iOS Info.plist not found at $IOS_INFO_PLIST${NC}"
    exit 1
fi

echo -e "${BLUE}🔍 Checking iOS Info.plist configuration...${NC}"

# Check if Info.plist uses Flutter variables (recommended approach)
if grep -q "\$(FLUTTER_BUILD_NAME)" "$IOS_INFO_PLIST" && grep -q "\$(FLUTTER_BUILD_NUMBER)" "$IOS_INFO_PLIST"; then
    echo -e "${GREEN}✅ iOS Info.plist is correctly configured to use Flutter variables${NC}"
    echo -e "${GREEN}   CFBundleShortVersionString: \$(FLUTTER_BUILD_NAME)${NC}"
    echo -e "${GREEN}   CFBundleVersion: \$(FLUTTER_BUILD_NUMBER)${NC}"
    
    echo -e "${GREEN}✅ Version update complete!${NC}"
    echo -e "${YELLOW}💡 The iOS app will use version $VERSION_NAME ($BUILD_NUMBER) on next build${NC}"
else
    echo -e "${YELLOW}⚠️  iOS Info.plist doesn't use Flutter variables. Updating manually...${NC}"
    
    # Backup original file
    cp "$IOS_INFO_PLIST" "$IOS_INFO_PLIST.backup"
    echo -e "${BLUE}📄 Created backup: $IOS_INFO_PLIST.backup${NC}"
    
    # Update CFBundleShortVersionString
    if grep -q "CFBundleShortVersionString" "$IOS_INFO_PLIST"; then
        # Update existing entry
        sed -i '' "/<key>CFBundleShortVersionString<\/key>/{n;s/<string>.*<\/string>/<string>$VERSION_NAME<\/string>/;}" "$IOS_INFO_PLIST"
        echo -e "${GREEN}✅ Updated CFBundleShortVersionString to: $VERSION_NAME${NC}"
    else
        echo -e "${RED}❌ CFBundleShortVersionString not found in Info.plist${NC}"
    fi
    
    # Update CFBundleVersion
    if grep -q "CFBundleVersion" "$IOS_INFO_PLIST"; then
        # Update existing entry
        sed -i '' "/<key>CFBundleVersion<\/key>/{n;s/<string>.*<\/string>/<string>$BUILD_NUMBER<\/string>/;}" "$IOS_INFO_PLIST"
        echo -e "${GREEN}✅ Updated CFBundleVersion to: $BUILD_NUMBER${NC}"
    else
        echo -e "${RED}❌ CFBundleVersion not found in Info.plist${NC}"
    fi
    
    echo -e "${GREEN}✅ iOS version updated manually!${NC}"
fi

# Update project.pbxproj with all version-related variables
IOS_PROJECT_FILE="ios/Runner.xcodeproj/project.pbxproj"
if [ -f "$IOS_PROJECT_FILE" ]; then
    echo -e "${BLUE}🔍 Updating Xcode project settings...${NC}"
    
    # Backup project file
    cp "$IOS_PROJECT_FILE" "$IOS_PROJECT_FILE.backup"
    echo -e "${BLUE}📄 Created backup: $IOS_PROJECT_FILE.backup${NC}"
    
    # Update MARKETING_VERSION
    if grep -q "MARKETING_VERSION" "$IOS_PROJECT_FILE"; then
        sed -i '' "s/MARKETING_VERSION = [^;]*/MARKETING_VERSION = $VERSION_NAME/g" "$IOS_PROJECT_FILE"
        echo -e "${GREEN}✅ Updated MARKETING_VERSION to: $VERSION_NAME${NC}"
    fi
    
    # Update CURRENT_PROJECT_VERSION  
    if grep -q "CURRENT_PROJECT_VERSION" "$IOS_PROJECT_FILE"; then
        sed -i '' "s/CURRENT_PROJECT_VERSION = [^;]*/CURRENT_PROJECT_VERSION = $BUILD_NUMBER/g" "$IOS_PROJECT_FILE"
        echo -e "${GREEN}✅ Updated CURRENT_PROJECT_VERSION to: $BUILD_NUMBER${NC}"
    fi
    
    # Update FLUTTER_BUILD_NAME (this was missing!)
    if grep -q "FLUTTER_BUILD_NAME" "$IOS_PROJECT_FILE"; then
        sed -i '' "s/FLUTTER_BUILD_NAME = [^;]*/FLUTTER_BUILD_NAME = $VERSION_NAME/g" "$IOS_PROJECT_FILE"
        echo -e "${GREEN}✅ Updated FLUTTER_BUILD_NAME to: $VERSION_NAME${NC}"
    fi
    
    # Update FLUTTER_BUILD_NUMBER
    if grep -q "FLUTTER_BUILD_NUMBER" "$IOS_PROJECT_FILE"; then
        sed -i '' "s/FLUTTER_BUILD_NUMBER = [^;]*/FLUTTER_BUILD_NUMBER = $BUILD_NUMBER/g" "$IOS_PROJECT_FILE"
        echo -e "${GREEN}✅ Updated FLUTTER_BUILD_NUMBER to: $BUILD_NUMBER${NC}"
    fi
    
    echo -e "${BLUE}🔧 All iOS project version variables updated${NC}"
fi

echo ""
echo -e "${GREEN}🎉 iOS version sync completed successfully!${NC}"
echo -e "${BLUE}📱 Next steps:${NC}"
echo -e "   1. Build IPA: ${YELLOW}flutter build ipa --flavor stage${NC}"
echo ""
echo -e "${YELLOW}💡 Pro tip: Run this script whenever you update the version in pubspec.yaml${NC}" 