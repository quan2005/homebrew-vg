class Vg < Formula
  desc "ripgrep-all + 本地向量语义搜索，hybrid/semantic/text 三模式"
  homepage "https://github.com/quan2005/vector-grep"
  url "https://github.com/quan2005/vector-grep/releases/download/v0.1.0/vg-v0.1.0-aarch64-apple-darwin.tar.gz"
  sha256 "153731fc9b6021bba915206cb8ea26deb90260fe703a8e30f0efde9627d39aeb"
  license "MIT"
  version "0.1.0"

  depends_on "ripgrep-all"

  def install
    bin.install "vg"
    bin.install "vg-index"
  end

  test do
    system "#{bin}/vg", "--help"
  end
end
