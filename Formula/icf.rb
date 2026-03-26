class Icf < Formula
  desc "Incident Command Framework — manage incidents via GitHub Issues from your terminal"
  homepage "https://github.com/BlackAsteroid/icf"
  url "https://registry.npmjs.org/@blackasteroid/icf/-/icf-1.2.3.tgz"
  sha256 "28d898c787cf449cc073eb41f56bedbaf2d643401a6f74b66999ae48ec571ef4"
  license "MIT"
  version "1.2.3"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/icf --version")
  end
end
