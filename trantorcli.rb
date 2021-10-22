class Trantorcli < Formula
  desc "Terminus Trantor CLI"
  homepage "https://www.terminus.io/"
  url "https://terminus-trantor.oss-cn-hangzhou.aliyuncs.com/tools/cli/trantor-cli.latest.tar.gz"
  version "0.19.0"
  sha256 "5730f8a475a6e3fc2741edd9c73b3ff7ba8d27ad8bf536092161011d29a0b590"

#   depends_on "docker"

  def install
    # Remove windows files
   prefix.install %w[bin completions conf lib]
  end

  test do
    system "#{bin}/trantor", "version"
  end

end
