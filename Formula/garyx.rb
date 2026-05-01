class Garyx < Formula
  desc "AI chat gateway — connects Telegram/Feishu/WeChat to Claude/Codex"
  homepage "https://github.com/Pyiner/garyx"
  license "MIT"
  version "0.1.12"

  on_macos do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.12/garyx-0.1.12-aarch64-apple-darwin.tar.gz"
      sha256 "84c03ea3dbccc29623dd1809591b8d5c0b259d14296374799ff6f35704a93a21"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.12/garyx-0.1.12-x86_64-apple-darwin.tar.gz"
      sha256 "5f8290182bb52f66b38460f57bed6bd9f637de1b276b28983689e09c5d37306f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.12/garyx-0.1.12-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a72c437be7bec55f53a8f407e3692c2e458d8931a70b057a82f24c809b9059d6"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.12/garyx-0.1.12-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d31a3aaca119398bfba697c89b4ddace69f1791322cb084598ed28d51d0ec245"
    end
  end

  def install
    bin.install "garyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garyx --version")
  end
end
