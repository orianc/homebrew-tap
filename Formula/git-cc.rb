class GitSpeed < Formula
  desc "Interactive conventional Git commit tool"
  homepage "https://github.com/orianc/git-speed"
  url "https://github.com/orianc/git-speed/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "VOTRE_SHA256"

  depends_on "gum"

  def install
    bin.install "bin/gitc"
    man1.install "share/man/man1/gitc.1"
  end

  test do
    system "#{bin}/gitc", "--version"
  end
end