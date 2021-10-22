class Trantorcli < Formula
  desc "Terminus Trantor CLI"
  homepage "https://www.terminus.io/"
  url "https://terminus-trantor.oss-cn-hangzhou.aliyuncs.com/tools/cli/trantor-cli.latest.tar.gz"
  version "0.19.0"
  
  resource "gli" do
    url "https://rubygems.org/downloads/gli-2.17.1.gem"
    sha256 "584d527f59c7f4911941776bd7ec733d3ab693e4fea35223816409083b1def3c"
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
