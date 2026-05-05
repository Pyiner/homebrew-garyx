class Garyx < Formula
  desc "AI chat gateway — connects Telegram/Feishu/WeChat to Claude/Codex"
  homepage "https://github.com/Pyiner/garyx"
  license "MIT"
  version "0.1.14"

  on_macos do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.14/garyx-0.1.14-aarch64-apple-darwin.tar.gz"
      sha256 "d54ed3addf57186e9dcfa847c14759439e731a60fdb0266eb8ac19b338c33e72"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.14/garyx-0.1.14-x86_64-apple-darwin.tar.gz"
      sha256 "7a38b44dcda2223014d5c1cfb8b45631e5781c3a8c18b0bcf2b691422ccea082"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.14/garyx-0.1.14-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9b400dda545510731fc3b239ecc77d7e1b8dcc1ba88e7fb42fc4c9ec7c5a79ac"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.14/garyx-0.1.14-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ec027200ce16b722d085a51876800db338d8fba373cc66ba281967649d96d397"
    end
  end

  def install
    bin.install "garyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garyx --version")
  end
end
