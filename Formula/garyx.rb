class Garyx < Formula
  desc "AI chat gateway — connects Telegram/Feishu/WeChat to Claude/Codex"
  homepage "https://github.com/Pyiner/garyx"
  license "MIT"
  version "0.1.23"

  on_macos do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.23/garyx-0.1.23-aarch64-apple-darwin.tar.gz"
      sha256 "8b4cdf8d49f87f22c1de7d09e83ac124f1180a4ea7e08e3d907ecc333f2c6e02"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.23/garyx-0.1.23-x86_64-apple-darwin.tar.gz"
      sha256 "66e500be2b53b42c17b7b490109c3eced8446af4ab2bfb3033de03ceaafe1109"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.23/garyx-0.1.23-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e4504941e03fc36d0aba70929e1c92f7fb5e1bfb782c77148db9bbe0b0362b8b"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.23/garyx-0.1.23-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1f92f9663f8f7ad9403806bc5b9039b4cf6d281583c606afd6860706756bf651"
    end
  end

  def install
    bin.install "garyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garyx --version")
  end
end
