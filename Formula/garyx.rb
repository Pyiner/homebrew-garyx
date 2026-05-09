class Garyx < Formula
  desc "AI chat gateway — connects Telegram/Feishu/WeChat to Claude/Codex"
  homepage "https://github.com/Pyiner/garyx"
  license "MIT"
  version "0.1.18"

  on_macos do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.18/garyx-0.1.18-aarch64-apple-darwin.tar.gz"
      sha256 "3ff2e502a3dbd09e0e8db1313bfdda20293ccfdf74a54cc14c49ceae76d574ad"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.18/garyx-0.1.18-x86_64-apple-darwin.tar.gz"
      sha256 "ef5b6e515c6a36d3ae9c9f881c7294e260bac408cd511fb7b8229d7a79fb80e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.18/garyx-0.1.18-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e428aee548698d24fb1f3ba783f8562199a7407e0a74556322f6f4ae0f826a04"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.18/garyx-0.1.18-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "833fc9b2cf9d4403d4054cca86533abb72c4dd412cc685efb15236654dc9cb8e"
    end
  end

  def install
    bin.install "garyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garyx --version")
  end
end
