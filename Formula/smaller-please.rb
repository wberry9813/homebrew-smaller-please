# typed: strict
# frozen_string_literal: true

# Smaller, Please — Homebrew Formula (macOS Apple Silicon arm64).
#
# Installs the prebuilt CLI release artifact from the public GitHub release: `smaller` plus the
# `contextslim` compatibility alias and the Chrome extension payload. It does not build from
# source, does not run `smaller setup`, does not register the Native Host, does not touch Chrome,
# and never modifies $HOME. macOS 12+ (Monterey), Apple Silicon only. See the tap README.
#
# RENDERED-FORMULA: generated from the product template by scripts/render-homebrew-formula.sh
class SmallerPlease < Formula
  desc "Optimize local media before sending it to AI agents"
  homepage "https://github.com/wberry9813/Smaller-Please"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/wberry9813/Smaller-Please/releases/download/v0.1.0-beta.4/smaller-please-0.1.0-macos-arm64.tar.gz"
      sha256 "95c3a187afd25f19aa295f9a550bdae16be3fdb269e8f42b526ab8172b04d08d"
    end

    on_intel do
      odie "smaller-please ships only an Apple Silicon (arm64) macOS artifact today; " \
           "the Intel (x86_64) build is Planned. See https://github.com/wberry9813/Smaller-Please/releases."
    end
  end

  def install
    bin.install "bin/smaller"
    bin.install "bin/contextslim"
    pkgshare.install "share/smaller-please/extension"
  end

  def caveats
    <<~EOS
      Finish setup as your user (this formula never runs it for you):
        1. Run:  smaller setup
        2. Open chrome://extensions, enable Developer mode, click "Load unpacked", and select:
             ~/Applications/Smaller Please Extension

      Always load the extension from that visible path, never from the Homebrew Cellar.

      Media: `smaller setup` uses an existing FFmpeg, or (on an interactive terminal only) may
      offer `brew install ffmpeg`. FFmpeg is NOT a dependency of this formula.

      `brew uninstall smaller-please` removes only Homebrew-managed files. Your config,
      cache/store, staged extension, Native Host files, and Chrome data are left in place.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/smaller --version")
  end
end
