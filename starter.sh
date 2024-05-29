#!/bin/bash

# Function to check if a command exists
command_exists() {
    command -v "$1" &>/dev/null
}

# Prompt for username and password
echo "Please enter your Apple Developer account username:"
read -r apple_id
echo "Please enter your Apple Developer account password:"
read -s -r apple_password

# Export credentials as environment variables
export XCODES_USERNAME="$apple_id"
export XCODES_PASSWORD="$apple_password"

# Install Homebrew
if command_exists brew; then
    echo "Homebrew is already installed. Updating Homebrew..."
    brew update
else
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # Add Homebrew to the PATH for bash and zsh
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >>~/.profile
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >>~/.bash_profile
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >>~/.zprofile
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >>~/.zshrc
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Install iTerm2
if ! command_exists iterm2; then
    echo "Installing iTerm2..."
    brew install --cask iterm2
else
    echo "iTerm2 is already installed."
fi

# Install VSCode
if ! command_exists code; then
    echo "Installing Visual Studio Code..."
    brew install --cask visual-studio-code
else
    echo "Visual Studio Code is already installed."
fi

# Install Bundler for Ruby
if command_exists gem && ! gem list bundler -i; then
    echo "Installing Bundler..."
    gem install bundler
else
    echo "Bundler is already installed."
fi

# Install Xcodes
if ! command_exists xcodes; then
    echo "Installing xcodes..."
    brew install xcodesorg/made/xcodes
else
    echo "xcodes is already installed."
fi

# Install Cocoapods
if ! command_exists pod; then
    echo "Installing CocoaPods..."
    brew install cocoapods
else
    echo "CocoaPods is already installed."
fi

# Install Carthage
if ! command_exists carthage; then
    echo "Installing Carthage..."
    brew install carthage
else
    echo "Carthage is already installed."
fi

# Install Fastlane
if ! command_exists fastlane; then
    echo "Installing Fastlane..."
    brew install fastlane
else
    echo "Fastlane is already installed."
fi

# Install SwiftLint
if ! command_exists swiftlint; then
    echo "Installing SwiftLint..."
    brew install swiftlint
else
    echo "SwiftLint is already installed."
fi

# Install SwiftFormat
if ! command_exists swiftformat; then
    echo "Installing SwiftFormat..."
    brew install swiftformat
else
    echo "SwiftFormat is already installed."
fi

# Install tmux
if ! command_exists tmux; then
    echo "Installing tmux..."
    brew install tmux
else
    echo "tmux is already installed."
fi

# Install XcodeCoverageConverter
if ! command_exists xcode_coverage_converter; then
    echo "Installing XcodeCoverageConverter..."
    brew install twittemb/formulae/xcodecoverageconverter
else
    echo "XcodeCoverageConverter is already installed."
fi

# Ensure everything is up to date
echo "Upgrading all installed packages..."
brew upgrade

# Clean up Homebrew
echo "Cleaning up Homebrew..."
brew cleanup

# Install the latest version of Xcode
echo "Installing the latest version of Xcode..."
xcodes install --latest --experimental-unxip

# Print instructions for GitHub Runner setup
echo "All tools installed successfully!"
echo "Please open the following link and follow the instructions to set up the GitHub Runner:"
echo "https://github.com/ava-global/r-ket-ios/settings/actions/runners/new"
