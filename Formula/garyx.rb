class Garyx < Formula
  desc "AI chat gateway — connects Telegram/Feishu/WeChat to Claude/Codex"
  homepage "https://github.com/Pyiner/garyx"
  license "MIT"
  version "0.1.20"

  on_macos do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.20/garyx-0.1.20-aarch64-apple-darwin.tar.gz"
      sha256 "d52093cd65ad851c6e6c00b0ddacf2098a632b4259c7545ef442800d2a3b020c"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.20/garyx-0.1.20-x86_64-apple-darwin.tar.gz"
      sha256 "1b1eac6809b4b34ae6e249509878e6cc3829d9f53f20bc586d9f5ac5ddfd18e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.20/garyx-0.1.20-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4679c974efbdecb03c80fc08a78ac9f2a79ce62b5c2e18483e643b311d8530d2"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.20/garyx-0.1.20-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "830418ecb8155f8d85880ee023539403b9bb13a0c86eaa4ce73f538463309028"
    end
  end

  def install
    bin.install "garyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garyx --version")
  end
end
