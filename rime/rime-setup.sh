#!/bin/bash

# arch 下配置 fcitx5 好难啊，头都整晕了，先使用 ibus 吧。

source ../scripts/script-funcs.sh


if [[ `uname` == 'Darwin' ]]; then
    __link_file ~/dotfiles/rime/squirrel.custom.yaml ~/Library/Rime/squirrel.custom.yaml
    __link_file ~/dotfiles/rime/default.custom.yaml ~/Library/Rime/default.custom.yaml
    __link_file ~/dotfiles/rime/double_pinyin_flypy.custom.yaml ~/Library/Rime/double_pinyin_flypy.custom.yaml
    __link_file ~/dotfiles/rime/symbols.yaml ~/Library/Rime/symbols.yaml
    __link_file ~/dotfiles/rime/custom_phrase.txt ~/Library/Rime/custom_phrase.txt
    __link_file ~/dotfiles/rime/opencc ~/Library/Rime/opencc
    __link_file ~/dotfiles/rime/rime_ice.dict.yaml ~/Library/Rime/rime_ice.dict.yaml
    __link_file ~/dotfiles/rime/cn_dicts ~/Library/Rime/cn_dicts
elif [[ `uname` == 'Linux' ]]; then
    __link_file ~/dotfiles/rime/default.custom.yaml ~/.config/ibus/rime/default.custom.yaml
    __link_file ~/dotfiles/rime/double_pinyin_flypy.custom.yaml ~/.config/ibus/rime/double_pinyin_flypy.custom.yaml
    __link_file ~/dotfiles/rime/symbols.yaml ~/.config/ibus/rime/symbols.yaml
    __link_file ~/dotfiles/rime/custom_phrase.txt ~/.config/ibus/rime/custom_phrase.txt
    __link_file ~/dotfiles/rime/opencc ~/.config/ibus/rime/opencc
fi
