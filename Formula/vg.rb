class Vg < Formula
  desc "ripgrep-all + 本地向量语义搜索，hybrid/semantic/text 三模式"
  homepage "https://github.com/quan2005/vector-grep"
  url "https://github.com/quan2005/vector-grep/releases/download/v0.2.2/vg-v0.2.2-aarch64-apple-darwin.tar.gz"
  sha256 "eadbb0c20569e7172257751b95e4b1dbf2d47dcf37d92c63a22fd3a137a1bceb"
  license "MIT"
  version "0.2.2"

  depends_on "ripgrep-all"

  def install
    bin.install "vg"
    bin.install "vg-index"
  end

  test do
    system "#{bin}/vg", "--help"
  end
end
