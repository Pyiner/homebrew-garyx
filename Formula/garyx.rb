class Garyx < Formula
  desc "AI chat gateway — connects Telegram/Feishu/WeChat to Claude/Codex"
  homepage "https://github.com/Pyiner/garyx"
  license "MIT"
  version "0.1.22"

  on_macos do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.22/garyx-0.1.22-aarch64-apple-darwin.tar.gz"
      sha256 "7edd617a289e1f3f0add4a519d67ce1a2242fecb413b2cb32efbe03371d91696"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.22/garyx-0.1.22-x86_64-apple-darwin.tar.gz"
      sha256 "27723eb619fc9872dc7949d77210fc1f2b8bfdab0b078f0c377e9b4f50067ff8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.22/garyx-0.1.22-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9572b92c685da7f64365d654e941c9682c496acd85d3854baed978e68e834b7a"
    end
    on_intel do
      url "https://github.com/Pyiner/garyx/releases/download/v0.1.22/garyx-0.1.22-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b4779b0ebfdc75eae78c62a5d9a0bc777d001caa43da6d69ab0f963d7d3e4548"
    end
  end

  def install
    bin.install "garyx"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garyx --version")
  end
end
