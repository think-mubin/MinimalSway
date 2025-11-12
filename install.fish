#!/bin/fish

set -g base_dir base
set -g themes_dir themes
set -g config_dir $HOME/config
set -g themes

for theme in (/bin/ls $themes_dir)
    set -a themes $theme
end

function print_usage
    echo "usage: installer --theme <theme-name>" >&2
    echo "available themes are:" >&2
    for theme in $themes
        echo "    * $theme"
    end
end

argparse "h/help" "u/usage" "t/theme=" -- $argv

if set -ql _flag_help; or set -ql _flag_usage; or not set -ql _flag_theme; \
    or not contains $_flag_theme $themes
    print_usage
    exit 255
end

for config in (/bin/ls $base_dir)
    if test -d $config_dir/$config
        rm -fr $config_dir/$config/*
    else
        mkdir -p $config_dir/$config
    end
    cp -r $base_dir/$config/* $config_dir/$config/
end

set -l base_dir_items
for items in (/bin/ls $base_dir)
    set -a base_dir_items $items
end

for config in (/bin/ls $themes_dir/$_flag_theme)
    if test -d $config_dir/$config
        if not contains $config $base_dir_items
            rm -fr $config_dir/$config/*
        end
    else
        mkdir $config_dir/$config
    end
    cp -r $themes_dir/$_flag_theme/$config/* $config_dir/$config/
end
