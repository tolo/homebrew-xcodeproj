class XcodeprojCli < Formula
  desc "Command-line tool for manipulating Xcode project files"
  homepage "https://github.com/tolo/xcodeproj-cli"
  version "2.2.1"
  
  # URL will be updated automatically after GitHub Actions creates the release
  url "https://github.com/tolo/xcodeproj-cli/releases/download/v2.2.1/xcodeproj-cli-v2.2.1-macos.tar.gz"
  # SHA256 will be updated automatically after release
  sha256 "096c59cf47f076ff1ba4067842622e01faf65908c0599939f2dea3f8d4e9fde1"
  
  license "MIT"
  
  # Requires macOS 10.15 or newer
  depends_on macos: :catalina
  
  def install
    # Install the binary
    bin.install "xcodeproj-cli"
  end
  
  test do
    # Test that the tool runs and returns version
    assert_match "xcodeproj-cli version #{version}", shell_output("#{bin}/xcodeproj-cli --version")
    
    # Test help command
    output = shell_output("#{bin}/xcodeproj-cli --help")
    assert_match "XcodeProj CLI", output
    assert_match "Usage:", output
    
    # Test that it can handle missing project gracefully
    output = shell_output("#{bin}/xcodeproj-cli list-targets 2>&1", 1)
    assert_match "Error", output
  end
  
  def caveats
    <<~EOS
      📦 xcodeproj-cli has been installed!
      
      Quick start:
        xcodeproj-cli --help
        xcodeproj-cli --project MyApp.xcodeproj list-targets
      
      For more information:
        https://github.com/tolo/xcodeproj-cli
    EOS
  end
end
