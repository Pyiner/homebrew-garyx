class Garyx < Formula
  desc "AI chat gateway — connects Telegram/Feishu/WeChat to Claude/Codex"
  homepage "https://github.com/Pyiner/garyx"
  license "MIT"
  version "0.1.21"

  on_macos do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.21/garyx-0.1.21-aarch64-apple-darwin.tar.gz"
      sha256 "9ba7d5b49c8d407959c558bd631cf4f1b7173b9654e762fcc9335410cdf299c9"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.21/garyx-0.1.21-x86_64-apple-darwin.tar.gz"
      sha256 "cfe3e56b8bc1c2a7ea4d1d3246eb8505f69358e241652645d1af44e88a420cfa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.21/garyx-0.1.21-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cc0d6c8c150483b11fbaf4dd20194067937686109d0e89bd3f4c00d7360bcefd"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.21/garyx-0.1.21-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "520d7d6abe930dfa06ce576883b01497518f2ce3fa3027886358b24ec5a7ad76"
    end
  end

  def install
    bin.install "garyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garyx --version")
  end
end
