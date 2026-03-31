class KumaCli < Formula
  desc "CLI for managing Uptime Kuma via its native Socket.IO API"
  homepage "https://github.com/pablofmorales/kuma-cli"
  url "https://registry.npmjs.org/@blackasteroid/kuma-cli/-/kuma-cli-1.5.2.tgz"
  sha256 "d245fbc6b445d1d7859d68f3ad0ead2d382125664ff156b6a9578fe3c8ebc26c"
  license "MIT"
  version "1.5.2"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kuma --version")
  end
end
