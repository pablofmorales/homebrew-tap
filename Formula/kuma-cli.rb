class KumaCli < Formula
  desc "CLI for managing Uptime Kuma via its native Socket.IO API"
  homepage "https://github.com/pablofmorales/kuma-cli"
  url "https://registry.npmjs.org/@blackasteroid/kuma-cli/-/kuma-cli-1.7.0.tgz"
  sha256 "526b8cb1c37577be602dc6ebb0437c111f0a367f8b956fd295340335b4f660a7"
  license "MIT"
  version "1.7.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kuma --version")
  end
end
