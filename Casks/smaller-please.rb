cask "smaller-please" do
  version "0.1.0-beta.2"
  sha256 "9479ad5fb8ec96c0c2022cc5edb55d150043ea01c50581260e3a446d3ac77806"

  url "https://github.com/wberry9813/Smaller-Please/releases/download/v0.1.0-beta.2/Smaller-Please-Installer-0.1.0-beta.2-macos-arm64.dmg"
  name "Smaller Please"
  desc "Local AI upload optimization tool"
  homepage "https://github.com/wberry9813/Smaller-Please"

  depends_on macos: :monterey

  app "Smaller Please.app"

  caveats <<~EOS
    "Smaller Please.app" is the Smaller, Please installer. Open it once to install
    Smaller, Please Core, the Media Engine, the Native Host, and the browser extension
    files. Then add the extension in Chrome: open chrome://extensions, enable Developer
    mode, click "Load unpacked", and select:

      ~/Applications/Smaller Please Extension

    To remove the installed program and integration files later, run:

      smaller uninstall
  EOS
end
