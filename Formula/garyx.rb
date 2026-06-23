class Garyx < Formula
  desc "AI chat gateway — connects Telegram/Feishu/WeChat to Claude/Codex"
  homepage "https://github.com/Pyiner/garyx"
  license "MIT"
  version "0.1.30"

  on_macos do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.30/garyx-0.1.30-aarch64-apple-darwin.tar.gz"
      sha256 "42b4ba62ec87c010578e2d69fd71d6271b3dfbe80dc2ed0253978fafeaf4901a"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.30/garyx-0.1.30-x86_64-apple-darwin.tar.gz"
      sha256 "a8a39fa8accdbd960ed7be096bb87b07e18e31d90c1b287d720a1ec1a18a2ec4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.30/garyx-0.1.30-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8e9f422dcb7b1b37f22f8d997a6f4251658f1058f152d1d74eb6626258a9e150"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.30/garyx-0.1.30-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8f7fd006850558065504ff4935b2203231cf3c0f5be80e7bf896e69fd67550e8"
    end
  end

  def install
    bin.install "garyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garyx --version")
  end
end
