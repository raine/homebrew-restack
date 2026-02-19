class Restack < Formula
  desc "Rebase stacked PRs onto their current base branches"
  homepage "https://github.com/raine/restack"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/restack/releases/download/v0.1.1/restack-darwin-arm64.tar.gz"
      sha256 "8f25bb46c793fbbda0b9134c6edd6f31035a8c61b425228efbba75581ebd20a1"
    else
      url "https://github.com/raine/restack/releases/download/v0.1.1/restack-darwin-amd64.tar.gz"
      sha256 "c867091583d05d52bd8cb863d5a87fbc72c9ffb6e87fc7072430827af1b7f52c"
    end
  end

  on_linux do
    url "https://github.com/raine/restack/releases/download/v0.1.1/restack-linux-amd64.tar.gz"
    sha256 "142ebc6f926bef64e6d24b7d86f9888a91b7076558bc837afe65056e1f9a36b0"
  end

  def install
    bin.install "restack"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/restack --version")
  end
end
