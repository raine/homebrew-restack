class Restack < Formula
  desc "Rebase stacked PRs onto their current base branches"
  homepage "https://github.com/raine/restack"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/restack/releases/download/v0.1.2/restack-darwin-arm64.tar.gz"
      sha256 "db35057af8209d7a26398c16e87c92c5a992cf2d041ae1e2957ec3809a1c2dfb"
    else
      url "https://github.com/raine/restack/releases/download/v0.1.2/restack-darwin-amd64.tar.gz"
      sha256 "c6796eb5192082ff2c1189d7aaa7b53d1880812a4026688179bd1669244edb93"
    end
  end

  on_linux do
    url "https://github.com/raine/restack/releases/download/v0.1.2/restack-linux-amd64.tar.gz"
    sha256 "c220a3e88b1e478fa3f1a7e11f996e56dcceb47ce670db5710adb675e8babaeb"
  end

  def install
    bin.install "restack"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/restack --version")
  end
end
