class Garyx < Formula
  desc "AI chat gateway — connects Telegram/Feishu/WeChat to Claude/Codex"
  homepage "https://github.com/Pyiner/garyx"
  license "MIT"
  version "0.1.24"

  on_macos do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.24/garyx-0.1.24-aarch64-apple-darwin.tar.gz"
      sha256 "bec35ec319e6560aba9936ccb6c3caaa787e228e019bc4a227df89fbb77db3b8"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.24/garyx-0.1.24-x86_64-apple-darwin.tar.gz"
      sha256 "7909c62a296573797acabb81b2185bde490567f9b0dbab923da7cc904ffc252e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.24/garyx-0.1.24-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "28764b00923ddfe6a6a4f066f29e53a5a53ceb69d359471c80fc7d01a6da32d4"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.24/garyx-0.1.24-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fed5c67f987e22108bc33bd22816ab7a5b4c7f6eaa78068692ab005e1618a2f7"
    end
  end

  def install
    bin.install "garyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garyx --version")
  end
end
