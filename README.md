# homebrew-trantorcli

ruby写法参考

https://github.com/Homebrew/homebrew-core/blob/master/Formula/anyenv.rb



# url下载目录和git工程下载目录：
/Users/chengong/Library/Caches/Homebrew/downloads
/usr/local/Homebrew/Library/Taps/chengong24/homebrew-trantorcli

# 生成completion文件
if [[ -n $(type cli-completion) ]]; then
  i "Generate completion file."
   //生成 zsh completion
  cli-completion --zsh trantor-completion.yaml >trantor-cli/completions/zsh/_trantor
  //生成 bash completion
  cli-completion --bash trantor-completion.yaml >trantor-cli/completions/bash/trantor-completion.bash
  // 生成 fish completion
  cli-completion --fish trantor-completion.yaml >trantor-cli/completions/fish/trantor-completion.fish
  // 生成 powershell completion
  cli-completion --powershell trantor-completion.yaml >trantor-cli/completions/powershell/trantor-completion.ps
fi


