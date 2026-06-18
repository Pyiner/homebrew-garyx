class Garyx < Formula
  desc "AI chat gateway — connects Telegram/Feishu/WeChat to Claude/Codex"
  homepage "https://github.com/Pyiner/garyx"
  license "MIT"
  version "0.1.28"

  on_macos do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.28/garyx-0.1.28-aarch64-apple-darwin.tar.gz"
      sha256 "cd05167715a26e3b50c9a15557a63078c6ac7815c84fbe3ff39c1e38faa3b23b"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.28/garyx-0.1.28-x86_64-apple-darwin.tar.gz"
      sha256 "e1531ac0ddb74f96bddcf3e29a659bf675e670087278523657078281e4420e93"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.28/garyx-0.1.28-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e2a5796db14db3e0e873c4027e034de7ce95dcf79a7f27d69ed7622a7f1dcb64"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.28/garyx-0.1.28-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "111113be594caaf262e9bc5c71499498ea18cc7baba1158ed1c37f8696dd4906"
    end
  end

  def install
    bin.install "garyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garyx --version")
  end
end
