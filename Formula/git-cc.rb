class GitSpeed < Formula
  desc "Interactive conventional Git commit tool"
  homepage "https://github.com/orianc/git-cc"
  url "https://github.com/orianc/git-cc/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "c7282d09cfda8cfc250ed4d8cdfbea0434e2d93f40a651fbdaecefc170242845"

  depends_on "gum"

  def install
    bin.install "bin/gitc"
    man1.install "share/man/man1/gitc.1"
  end

  test do
    system "#{bin}/gitc", "--version"
  end
end