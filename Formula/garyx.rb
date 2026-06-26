class Garyx < Formula
  desc "AI chat gateway — connects Telegram/Feishu/WeChat to Claude/Codex"
  homepage "https://github.com/Pyiner/garyx"
  license "MIT"
  version "0.1.31"

  on_macos do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.31/garyx-0.1.31-aarch64-apple-darwin.tar.gz"
      sha256 "2818159cfd0dcf6b19cb4839e53a073cdcec8ee69b1ddfde4bf9ae17d521040e"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.31/garyx-0.1.31-x86_64-apple-darwin.tar.gz"
      sha256 "e642725e6523c1a6115a6bf299708575c01e1dee41cb6f87dad794ea9cfca9bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.31/garyx-0.1.31-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9cc28efab4fb43b58c0c80ed08a9c69bd1128a950a46407f76871ef3ccfd4ffc"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.31/garyx-0.1.31-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5d764839ea619750bf70a54a241a519c368446a867d42092552d7c331dc0e274"
    end
  end

  def install
    bin.install "garyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garyx --version")
  end
end
