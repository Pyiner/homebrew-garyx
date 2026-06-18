class Garyx < Formula
  desc "AI chat gateway — connects Telegram/Feishu/WeChat to Claude/Codex"
  homepage "https://github.com/Pyiner/garyx"
  license "MIT"
  version "0.1.29"

  on_macos do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.29/garyx-0.1.29-aarch64-apple-darwin.tar.gz"
      sha256 "06268c4626cdb87ebccded286ead859200d6102c7c5554a7be8dd35f4a36dc76"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.29/garyx-0.1.29-x86_64-apple-darwin.tar.gz"
      sha256 "53562a7b29f1e4bc09b772a826fa00a355d7ce2d1a6a0804e69140f10531b8e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.29/garyx-0.1.29-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ddf772632b0b20c7ae267abb9685b41666ce2dd436729918853b0d88acae9b85"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.29/garyx-0.1.29-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8281dff9ebffb2d8afbe5a99f2ff6794f0ffd5c089952b32a37430fbb75c274e"
    end
  end

  def install
    bin.install "garyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garyx --version")
  end
end
