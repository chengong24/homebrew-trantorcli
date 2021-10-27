class Trantorcli< Formula
  desc "Terminus Trantor CLI"
  homepage "https://www.terminus.io/"
  url "https://terminus-trantor.oss-cn-hangzhou.aliyuncs.com/tools/cli/trantor-cli.latest.tar.gz"
  version "1.0.RELEASE"
  sha256 "6a1765fdde932fdb1a66bd37295c2a32ea80b071563640b9dba217f78bb50a20"

#   depends_on "docker"

  def install
    # Remove windows files
   prefix.install %w[bin conf lib]
   zsh_completion.install "completions/zsh/_trantor"
   bash_completion.install "completions/bash/trantor-completion.bash"
   fish_completion.install "completions/fish/trantor-completion.fish"
  end

  
  test do
    system "#{bin}/trantor", "version"
  end

end
