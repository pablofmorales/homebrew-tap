class KumaCli < Formula
  desc "CLI for managing Uptime Kuma via its native Socket.IO API"
  homepage "https://github.com/pablofmorales/kuma-cli"
  url "https://registry.npmjs.org/@pablofmorales/kuma-cli/-/kuma-cli-1.5.1.tgz"
  sha256 "d77f9fcc2f938443f50ea23e434682f8d0ffc7dba1378db69237946281d36d88"
  license "MIT"
  version "1.5.1"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kuma --version")
  end
end
