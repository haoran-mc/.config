#!/bin/bash

# arch 下配置 fcitx5 好难啊，头都整晕了，先使用 ibus 吧。


if [[ `uname` == 'Darwin' ]]; then
    ln -s ~/dotfiles/rime/squirrel.custom.yaml ~/Library/Rime/squirrel.custom.yaml
    ln -s ~/dotfiles/rime/default.custom.yaml ~/Library/Rime/default.custom.yaml
    ln -s ~/dotfiles/rime/double_pinyin_flypy.custom.yaml ~/Library/Rime/double_pinyin_flypy.custom.yaml
    ln -s ~/dotfiles/rime/symbols_caps_s.yaml ~/Library/Rime/symbols_caps_s.yaml
elif [[ `uname` == 'Linux' ]]; then
    ln -s ~/dotfiles/rime/default.custom.yaml ~/.config/ibus/rime/default.custom.yaml
    ln -s ~/dotfiles/rime/double_pinyin_flypy.custom.yaml ~/.config/ibus/rime/double_pinyin_flypy.custom.yaml
    ln -s ~/dotfiles/rime/symbols_caps_s.yaml ~/.config/ibus/rime/symbols_caps_s.yaml
fi
