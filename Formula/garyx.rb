class Garyx < Formula
  desc "AI chat gateway — connects Telegram/Feishu/WeChat to Claude/Codex"
  homepage "https://github.com/Pyiner/garyx"
  license "MIT"
  version "0.1.19"

  on_macos do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.19/garyx-0.1.19-aarch64-apple-darwin.tar.gz"
      sha256 "f2471d52454f64c17c5de73ef8b67aa92f90ff635a8d3d62cd3c44d3d83b3c9e"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.19/garyx-0.1.19-x86_64-apple-darwin.tar.gz"
      sha256 "9d922d10fb38b66f156a09304f993e9c65ae57cee75c346cac0bdbd7c063f07d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.19/garyx-0.1.19-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "14aaf03e3e30a6efdf500d092bad3cf186009bb52aeef811c78a73893235113b"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.19/garyx-0.1.19-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d8c8b72d93923ffbf92b2a72661535c0d4cc843f043e828c4e1b48a133694cb2"
    end
  end

  def install
    bin.install "garyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garyx --version")
  end
end
