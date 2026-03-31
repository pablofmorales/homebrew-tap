class KumaCli < Formula
  desc "CLI for managing Uptime Kuma via its native Socket.IO API"
  homepage "https://github.com/pablofmorales/kuma-cli"
  url "https://registry.npmjs.org/@pablofmorales/kuma-cli/-/kuma-cli-1.4.1.tgz"
  sha256 "59d319d1535a0c1b540aa0b456bb2fbd51e5f356d688346b09b0e6379d46e741"
  license "MIT"
  version "1.4.1"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kuma --version")
  end
end
