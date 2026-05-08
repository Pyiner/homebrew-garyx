class Garyx < Formula
  desc "AI chat gateway — connects Telegram/Feishu/WeChat to Claude/Codex"
  homepage "https://github.com/Pyiner/garyx"
  license "MIT"
  version "0.1.16"

  on_macos do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.16/garyx-0.1.16-aarch64-apple-darwin.tar.gz"
      sha256 "04372150d7588ddf553c8bfff5c396948445a021c3bace89d645ea75f3348a66"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.16/garyx-0.1.16-x86_64-apple-darwin.tar.gz"
      sha256 "f08999a193064030091b641ab851af911ebf76b32b4ecb2cdf10d2b06cbdeb7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.16/garyx-0.1.16-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ae19e227c18d2beea97b6d0ade91c6b6fd676a171f74d35d4cbc82638cc1807c"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.16/garyx-0.1.16-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bc1c9b2392960c15961038a0729e1a21e4344a1e41ce937710031de8023c6c27"
    end
  end

  def install
    bin.install "garyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garyx --version")
  end
end
