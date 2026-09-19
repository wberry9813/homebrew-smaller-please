cask "smaller-please" do
  version "0.1.0-beta.3"
  sha256 "69b01eb0fdb12bbc6f8f410c58b1ae9578fc58623fe838496a55953d88162396"

  url "https://github.com/wberry9813/Smaller-Please/releases/download/v0.1.0-beta.3/Smaller-Please-Installer-0.1.0-beta.3-macos-arm64.dmg"
  name "Smaller Please"
  desc "Local AI upload optimization tool"
  homepage "https://github.com/wberry9813/Smaller-Please"

  depends_on macos: :monterey

  app "Smaller Please Installer.app"

  caveats <<~EOS
    "Smaller Please Installer.app" is the Smaller Please installer. Open it once to install
    Smaller Please Core, the Media Engine, the Native Host, and the browser extension
    files. Then add the extension in Chrome: open chrome://extensions, enable Developer
    mode, click "Load unpacked", and select:

      ~/Applications/Smaller Please Extension

    To remove the installed program and integration files later, run:

      smaller uninstall
  EOS
end
