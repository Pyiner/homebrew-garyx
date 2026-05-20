class Garyx < Formula
  desc "AI chat gateway — connects Telegram/Feishu/WeChat to Claude/Codex"
  homepage "https://github.com/Pyiner/garyx"
  license "MIT"
  version "0.1.25"

  on_macos do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.25/garyx-0.1.25-aarch64-apple-darwin.tar.gz"
      sha256 "a60be06a27f9936e53a7043bed4d3f6f04350d8332c532f23d14a2b744fb6137"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.25/garyx-0.1.25-x86_64-apple-darwin.tar.gz"
      sha256 "adfc7cb3b9548b6c26cf3d3a200fa3c18c8bd7f0dc5e3cdc0fe14a4c371487e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.25/garyx-0.1.25-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6e503422a6d0e955b9f9d0c0b9f2dbbacf4c06fb3f7c7b8e426b758b0575bc7e"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.25/garyx-0.1.25-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "283a3829963d7c02a15cdeed7d8dbbb065a1fd25d2573bfba2df645df42cf879"
    end
  end

  def install
    bin.install "garyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garyx --version")
  end
end
