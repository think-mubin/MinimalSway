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
    if test -d $config_dir/{$config}_backup
        rm -fr $config_dir/{$config}_backup
    end
    if test -d $config_dir/$config
        mv $config_dir/$config $config_dir/{$config}_backup
    end
    mkdir $config_dir/$config
    cp -r $base_dir/$config/* $config_dir/$config/
end
for config in (/bin/ls $themes_dir/$_flag_theme)
    if not test -d $config_dir/$config
        mkdir $config_dir/$config
        cp -r $themes_dir/$_flag_theme/$config/* $config_dir/$config/
        continue
    end
    if not test -f $config_dir/$config/minimal_wm_config_sign
        mv $config_dir/$config $config_dir/{$config}_backup
        mkdir $config_dir/$config
    end
    cp -r $themes_dir/$_flag_theme/$config/* $config_dir/$config/
end
