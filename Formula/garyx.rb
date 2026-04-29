class Garyx < Formula
  desc "AI chat gateway — connects Telegram/Feishu/WeChat to Claude/Codex"
  homepage "https://github.com/Pyiner/garyx"
  license "MIT"
  version "0.1.11"

  on_macos do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.11/garyx-0.1.11-aarch64-apple-darwin.tar.gz"
      sha256 "0ca2740b2bd4b5795d20c6dc844f611bb21b1e257866a018b35403923042ff8f"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.11/garyx-0.1.11-x86_64-apple-darwin.tar.gz"
      sha256 "9b9a3dc9022217119e30f8ec9e03659e0d37053698409aad0effc8fa56812554"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.11/garyx-0.1.11-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e22f05c6529360d432974cea53f2252145ab5c48fac49a195a59a98df60384b8"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.11/garyx-0.1.11-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a5d100f1b0ff7054ec47fa0d15097c5a0c6e345d559d99f8387f9df575559952"
    end
  end

  def install
    bin.install "garyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garyx --version")
  end
end
