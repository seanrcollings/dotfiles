set fish_greeting
set VIRTUAL_ENV_DISABLE_PROMPT disable
set -x PATH "/home/sean/.local/bin:$PATH"
set -x PATH "/home/sean/.cargo/bin:$PATH"

set -x EDITOR "/usr/bin/nvim"
set -x VISUAL "/usr/bin/nvim"
set -e ASDF_PYTHON_VERSION # What is even setting this?
#set -x RUBYOPT "-W:no-deprecated -W:no-experimental" # Older rails versions might blow up
set -gx FZF_DEFAULT_COMMAND "rg --files --hidden -g '!.git/'"

