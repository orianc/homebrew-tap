class GitSpeed < Formula
  desc "Interactive conventional Git commit tool"
  homepage "https://github.com/orianc/git-speed"
  url "https://github.com/orianc/git-speed/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "c7282d09cfda8cfc250ed4d8cdfbea0434e2d93f40a651fbdaecefc170242845"

  depends_on "gum"

  def install
    bin.install "bin/git-speed"
    man1.install "share/man/man1/git-speed.1"
  end

  test do
    system "#{bin}/git-speed", "--version"
  end
end