class Vg < Formula
  desc "ripgrep-all + 本地向量语义搜索，hybrid/semantic/text 三模式"
  homepage "https://github.com/quan2005/vector-grep"
  url "https://github.com/quan2005/vector-grep/releases/download/v0.2.1/vg-v0.2.1-aarch64-apple-darwin.tar.gz"
  sha256 "90a6451265382658558d6c98d213d00829d170251a4622a03cb5079875e8c102"
  license "MIT"
  version "0.2.1"

  depends_on "ripgrep-all"

  def install
    bin.install "vg"
    bin.install "vg-index"
  end

  test do
    system "#{bin}/vg", "--help"
  end
end
