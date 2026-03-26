class Icf < Formula
  desc "Incident Command Framework — manage incidents via GitHub Issues from your terminal"
  homepage "https://github.com/BlackAsteroid/icf"
  url "https://registry.npmjs.org/@blackasteroid/icf/-/icf-1.3.0.tgz"
  sha256 "295d03841dec72ebb3b01ffe2aed56ff432ed743468fabf1db1a4ec56f0aba64"
  license "MIT"
  version "1.3.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/icf --version")
  end
end
