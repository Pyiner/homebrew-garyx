class Garyx < Formula
  desc "AI chat gateway — connects Telegram/Feishu/WeChat to Claude/Codex"
  homepage "https://github.com/Pyiner/garyx"
  license "MIT"
  version "0.1.32"

  on_macos do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.32/garyx-0.1.32-aarch64-apple-darwin.tar.gz"
      sha256 "4462378e02d6b483d924b4a6d247494c422ae5ca5078a1c7a3be463ff4f58acd"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.32/garyx-0.1.32-x86_64-apple-darwin.tar.gz"
      sha256 "4291b40e3247489f935afbd17c74d5b841e6e6dd93178bda8b27b892450501b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.32/garyx-0.1.32-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5391763abfa4f42dd959109fe41e9a3af64bdb3326de9fbffd18cc7211a813ee"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.32/garyx-0.1.32-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3ded04cbc89401c94d804b378b6112abd24cb1e7042e066399f11dbc36446928"
    end
  end

  def install
    bin.install "garyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garyx --version")
  end
end
