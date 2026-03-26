class KumaCli < Formula
  desc "CLI for managing Uptime Kuma via its native Socket.IO API"
  homepage "https://github.com/BlackAsteroid/kuma-cli"
  url "https://registry.npmjs.org/@blackasteroid/kuma-cli/-/kuma-cli-1.4.0.tgz"
  sha256 "666cddb2a10a0c4fc555eab5a4ca742d3d677cc237f61514fde128b2f200fee0"
  license "MIT"
  version "1.4.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kuma --version")
  end
end
