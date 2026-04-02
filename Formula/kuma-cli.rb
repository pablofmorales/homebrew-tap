class KumaCli < Formula
  desc "CLI for managing Uptime Kuma via its native Socket.IO API"
  homepage "https://github.com/pablofmorales/kuma-cli"
  url "https://registry.npmjs.org/@blackasteroid/kuma-cli/-/kuma-cli-1.6.0.tgz"
  sha256 "62bb532c94a69e449559d2c763b998306cc2d494df8d0e4b9144b0e815076a9a"
  license "MIT"
  version "1.6.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kuma --version")
  end
end
