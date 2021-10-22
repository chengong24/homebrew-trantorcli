class Trantorcli < Formula
  desc "Terminus Trantor CLI"
  homepage "https://www.terminus.io/"
  url "https://terminus-trantor.oss-cn-hangzhou.aliyuncs.com/tools/cli/trantor-cli.latest.tar.gz"
  version "0.19.0"
  sha256 "c5f267f95ce1a6ddd1b35ab174a0beab17ddceb6950daa73d548a10178edbbf3"
  
  resource "sha256" do
    sha256 "c5f267f95ce1a6ddd1b35ab174a0beab17ddceb6950daa73d548a10178edbbf3"
  end
  
#   depends_on "docker"

  def buildExe()
    <<~EOS
      #!/bin/bash
      if [ -z "$JAVA_HOME" ] ; then
        JAVACMD=`which java`
      else
        JAVACMD="$JAVA_HOME/bin/java"
      fi
      export TRANTOR_HOME="#{prefix}"
      export TRANTOR_CLI_VERSION="0.19.0"
      exec "$JAVACMD" -jar "#{libexec}/trantor-cli.jar" "$@"
    EOS
  end

  def install
    # Remove windows files
    lib.install Dir["lib/*"]
    libexec.conf Dir["conf/*"]
    libexec.completions Dir["completions/*"]
    bin.install Dir["bin/*"]
    (bin/"trantorcli").write buildExe()
  end

  test do
    system "#{bin}/trantorcli", "version"
  end

end
