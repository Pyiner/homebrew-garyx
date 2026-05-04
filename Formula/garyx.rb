class Garyx < Formula
  desc "AI chat gateway — connects Telegram/Feishu/WeChat to Claude/Codex"
  homepage "https://github.com/Pyiner/garyx"
  license "MIT"
  version "0.1.13"

  on_macos do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.13/garyx-0.1.13-aarch64-apple-darwin.tar.gz"
      sha256 "e3a890f4667095f124cb1b63cf9362e2b1511ffd2bf750186c409ba4c6cdd600"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.13/garyx-0.1.13-x86_64-apple-darwin.tar.gz"
      sha256 "812047dfbf8bea49e05a21a3e30adf9d21aa60e9c7d804c50f7240bb0b3ff649"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.13/garyx-0.1.13-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "01af448badea7ac102dad5baa2509c23d2bd7636d8ee3befb66ddfcb43788bfb"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.13/garyx-0.1.13-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "354d210a03e737a2cb738d5d442e279c75bbd8391355af304aea7a94e5a41d7e"
    end
  end

  def install
    bin.install "garyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garyx --version")
  end
end
