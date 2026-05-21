class Garyx < Formula
  desc "AI chat gateway — connects Telegram/Feishu/WeChat to Claude/Codex"
  homepage "https://github.com/Pyiner/garyx"
  license "MIT"
  version "0.1.26"

  on_macos do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.26/garyx-0.1.26-aarch64-apple-darwin.tar.gz"
      sha256 "5b4b1d0c441c6ca89167c710232aa70fd057c529f31ce71d8fe5c15b1f85c80b"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.26/garyx-0.1.26-x86_64-apple-darwin.tar.gz"
      sha256 "496f568898b5279dab040d3e2773698ce2ab1541ebb5945ff5b9a11420237a9b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.26/garyx-0.1.26-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e9a6045adc7826c1630e535ad5ce2873091a7feb8d9243c8f1b057c8971a4898"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.26/garyx-0.1.26-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ee651acec5187f367e4193ba649840163dac45188db327ec90c11a4c28340c14"
    end
  end

  def install
    bin.install "garyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garyx --version")
  end
end
