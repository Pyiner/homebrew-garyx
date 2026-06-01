class Garyx < Formula
  desc "AI chat gateway — connects Telegram/Feishu/WeChat to Claude/Codex"
  homepage "https://github.com/Pyiner/garyx"
  license "MIT"
  version "0.1.27"

  on_macos do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.27/garyx-0.1.27-aarch64-apple-darwin.tar.gz"
      sha256 "98975f01e0b6fa56ac1962214cdca5d41e35d51fba26b3048b30d21e88a2a8b5"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.27/garyx-0.1.27-x86_64-apple-darwin.tar.gz"
      sha256 "f143e5dc72c2c450ef7d1529433c574431a23b5a28c136f9c3e200941eb12cda"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.27/garyx-0.1.27-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "67c10fa7fcc14c0f0709dcb9418404427a7af057bc3f2a133db2264ffba01a2e"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.27/garyx-0.1.27-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b0a6764ceab54bb0bb6a7309da293e6e86ba11db76fe89c39dbbacaa760f4d51"
    end
  end

  def install
    bin.install "garyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garyx --version")
  end
end
