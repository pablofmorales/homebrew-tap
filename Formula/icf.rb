class Icf < Formula
  desc "Incident Command Framework — manage incidents via GitHub Issues from your terminal"
  homepage "https://github.com/pablofmorales/icf"
  url "https://registry.npmjs.org/@blackasteroid/icf/-/icf-1.3.1.tgz"
  sha256 "6838b31eb73143319eda08ec7fc206adff20f2018cabc496e58b2bd0d35e41b2"
  license "MIT"
  version "1.3.1"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/icf --version")
  end
end
