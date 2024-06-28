export HOME=/Users/yaoyhu
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
export VCPKG_ROOT="$HOME/opt/vcpkg"
ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode reminder  # just remind me to update when it's time

plugins=(
	zsh-autosuggestions
	zsh-vi-mode
	zsh-syntax-highlighting
)
# plugins need to be added before oh-my-zsh.sh is sourced.
source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8
export EDITOR='vim'

export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# alias clang++="clang++ -std=c++11 -Wall -Werror"
alias cat="bat"
alias ra="ranger"
alias gcc="gcc-14"

eval $(thefuck --alias)
eval "$(lua /Users/yaoyhu/.oh-my-zsh/plugins/z.lua/z.lua  --init zsh)"

alias saver="open /System/Library/CoreServices/ScreenSaverEngine.app"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/yaoyhu/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/yaoyhu/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/yaoyhu/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/yaoyhu/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="/opt/homebrew/opt/node@20/bin:$PATH"
export PATH="/opt/homebrew/opt/binutils/bin:$PATH"
export HOMEBREW_NO_AUTO_UPDATE=1
export PATH="/opt/homebrew/Cellar/riscv-pk/main/riscv64-unknown-elf/bin:$PATH"
export PATH="/opt/homebrew/Cellar/x86_64-unknown-linux-gnu/13.2.0/bin:$PATH"
export PATH="/opt/homebrew/Cellar/riscv-gnu-toolchain/main/bin:$PATH"
export CLASSPATH="~/opt/algs4.jar"

export fzf_default_command='fd'
eval "$(fzf --zsh)"

autoload bashcompinit
bashcompinit
source /Users/yaoyhu/opt/vcpkg/scripts/vcpkg_completion.zsh
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
# bindkey '^ ' autosuggest-accept
