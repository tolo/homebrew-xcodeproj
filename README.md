# Homebrew Tap for xcodeproj-cli

This is a [Homebrew](https://brew.sh) tap for [xcodeproj-cli](https://github.com/tolo/xcodeproj-cli), a powerful command-line utility for programmatically manipulating Xcode project files without requiring Xcode or Docker.

## Installation

```bash
# Add this tap
brew tap tolo/xcodeproj

# Install xcodeproj-cli
brew install xcodeproj-cli
```

## Usage

Once installed, the `xcodeproj-cli` command will be available in your PATH:

```bash
# Show help
xcodeproj-cli --help

# List targets in a project
xcodeproj-cli --project MyApp.xcodeproj list-targets

# Add a file to a project
xcodeproj-cli --project MyApp.xcodeproj add-file NewFile.swift Sources MyTarget
```

## Updating

```bash
# Update tap formulas
brew update

# Upgrade to the latest version
brew upgrade xcodeproj-cli
```

## Uninstalling

```bash
# Remove xcodeproj-cli
brew uninstall xcodeproj-cli

# Remove this tap (optional)
brew untap tolo/xcodeproj
```

## About xcodeproj-cli

xcodeproj-cli provides comprehensive Xcode project management capabilities including:

- **File Operations** - Add, remove, and move files
- **Target Management** - Create, duplicate, and configure targets
- **Build Settings** - Modify build configurations
- **Dependencies** - Manage frameworks and Swift packages
- **Project Structure** - Create groups and validate project integrity

### Key Features

- 🚀 **No Xcode Required** - Pure Swift implementation
- 🎯 **30+ Commands** - Comprehensive project manipulation
- 📦 **Swift Package Support** - Add/remove SPM dependencies
- 🔧 **Build Configuration** - Modify settings programmatically
- ✅ **Project Validation** - Check for common issues
- 🏗️ **Universal Binary** - Native support for Intel and Apple Silicon

## Documentation

For full documentation and examples, visit the main repository:
- [GitHub Repository](https://github.com/tolo/xcodeproj-cli)
- [Changelog](https://github.com/tolo/xcodeproj-cli/blob/main/CHANGELOG.md)
- [Issues](https://github.com/tolo/xcodeproj-cli/issues)

## License

xcodeproj-cli is available under the MIT license. See the [LICENSE](https://github.com/tolo/xcodeproj-cli/blob/main/LICENSE) file for more info.

## Maintainer

This tap is maintained by [@tolo](https://github.com/tolo).
