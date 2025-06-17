class GitCc < Formula
  desc "Interactive conventional Git commit tool"
  homepage "https://github.com/orianc/git-speed"
  url "https://github.com/orianc/git-speed/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "9c1924709b68b8c87fb96b813f4e1f8abc945c0547337e70dcc9731ae9a54712"

  depends_on "gum"

  def install
    bin.install "bin/gitc"
    man1.install "share/man/man1/gitc.1"
  end

  test do
    system "#{bin}/gitc", "--version"
  end
end