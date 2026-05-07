class Garyx < Formula
  desc "AI chat gateway — connects Telegram/Feishu/WeChat to Claude/Codex"
  homepage "https://github.com/Pyiner/garyx"
  license "MIT"
  version "0.1.15"

  on_macos do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.15/garyx-0.1.15-aarch64-apple-darwin.tar.gz"
      sha256 "a997c2debb1576d8e04d5101e13fcd28577eb5294b7c94855f5d57a7fca0c1be"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.15/garyx-0.1.15-x86_64-apple-darwin.tar.gz"
      sha256 "18aa3164a240220b65df7f05e0f24e410a9b767f6c14a1484a485dd85c2f3bc1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.15/garyx-0.1.15-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "642ee69c0fbc11b1c3e93eeaaac9b76ad639c7cbcd8a5f919998eac9051b794e"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.15/garyx-0.1.15-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "debf08e893069d9a457715dc6cc5bc5019c4991f54773f1fcfeadbb1a0eb1c88"
    end
  end

  def install
    bin.install "garyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garyx --version")
  end
end
