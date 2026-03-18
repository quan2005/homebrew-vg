class Vg < Formula
  desc "ripgrep-all + 本地向量语义搜索，hybrid/semantic/text 三模式"
  homepage "https://github.com/quan2005/vector-grep"
  url "https://github.com/quan2005/vector-grep/releases/download/v0.2.0/vg-v0.2.0-aarch64-apple-darwin.tar.gz"
  sha256 "dbd21f24cd7b483dbc82c64ff75433056b1f545d69ec01a0b081d9fbd44714de"
  license "MIT"
  version "0.2.0"

  depends_on "ripgrep-all"

  def install
    bin.install "vg"
    bin.install "vg-index"
  end

  test do
    system "#{bin}/vg", "--help"
  end
end
