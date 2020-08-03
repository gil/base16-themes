# Base16 hybrid
# Author: Andrew Wong (https://github.com/w0ng/vim-hybrid), base16 by Andre Gil (https://github.com/gil)

set -l color00 '#1E1F22'
set -l color01 '#A6B255'
set -l color02 '#EBBB61'
set -l color03 '#2A2D32'
set -l color04 '#6F90B0'
set -l color05 '#5D656D'
set -l color06 '#A27FAD'
set -l color07 '#B9BCBA'
set -l color08 '#922F33'
set -l color09 '#BF5053'
set -l color0A '#D4804D'
set -l color0B '#7A8431'
set -l color0C '#4D7B74'
set -l color0D '#4D6D8B'
set -l color0E '#71527C'
set -l color0F '#79B2A8'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -U FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg+:$color01,bg:$color00,spinner:$color0C,hl:$color0D"\
" --color=fg:$color04,header:$color0D,info:$color0A,pointer:$color0C"\
" --color=marker:$color0C,fg+:$color06,prompt:$color0A,hl+:$color0D"
