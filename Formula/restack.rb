class Restack < Formula
  desc "Rebase stacked PRs onto their current base branches"
  homepage "https://github.com/raine/restack"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/restack/releases/download/v0.1.3/restack-darwin-arm64.tar.gz"
      sha256 "851dec033fff810aa775f820f8d039b9623c71588cb8a9b8ce859e561e20b801"
    else
      url "https://github.com/raine/restack/releases/download/v0.1.3/restack-darwin-amd64.tar.gz"
      sha256 "2fc1e2015f820f7ec0d339ada74b7e7f1778fa7c2962f01fbcb7ce65378258c0"
    end
  end

  on_linux do
    url "https://github.com/raine/restack/releases/download/v0.1.3/restack-linux-amd64.tar.gz"
    sha256 "d7ab5810c4976d531e5b77725a894b1c02bc999f88ab807d9a3e4db284fa5970"
  end

  def install
    bin.install "restack"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/restack --version")
  end
end
