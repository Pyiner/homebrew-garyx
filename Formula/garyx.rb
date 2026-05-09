class Garyx < Formula
  desc "AI chat gateway — connects Telegram/Feishu/WeChat to Claude/Codex"
  homepage "https://github.com/Pyiner/garyx"
  license "MIT"
  version "0.1.17"

  on_macos do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.17/garyx-0.1.17-aarch64-apple-darwin.tar.gz"
      sha256 "0a9ab203429b2a400628a070286ad54057120b85f436e8efe7ae19a60fc88e69"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.17/garyx-0.1.17-x86_64-apple-darwin.tar.gz"
      sha256 "cfff85b1b92ead4131385c089a51068797a9cb5aa9356492805cfdc7e810d496"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.17/garyx-0.1.17-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4481812839a2a7ae6175c8fee8bd61788861655f6fef1e4597cd0efa8b4ec93a"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.17/garyx-0.1.17-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0fc5c99f751c22d065c907b361eb8977175f5a5535573f8768522856212bfe3a"
    end
  end

  def install
    bin.install "garyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garyx --version")
  end
end
