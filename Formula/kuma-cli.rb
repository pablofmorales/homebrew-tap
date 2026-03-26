class KumaCli < Formula
  desc "CLI for managing Uptime Kuma via its native Socket.IO API"
  homepage "https://github.com/BlackAsteroid/kuma-cli"
  url "https://registry.npmjs.org/@blackasteroid/kuma-cli/-/kuma-cli-1.3.1.tgz"
  sha256 "ff4d15adf135fee13880efd1499c9216202921273faf3afa7a808885bcb63cd4"
  license "MIT"
  version "1.3.1"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kuma --version")
  end
end
