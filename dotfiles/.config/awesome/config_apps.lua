local filesystem = require('gears.filesystem')

-- Thanks to jo148 on github for making rofi dpi aware!
local with_dpi = require('beautiful').xresources.apply_dpi
local get_dpi = require('beautiful').xresources.get_dpi
--local rofi_command = 'env /usr/bin/rofi -dpi ' .. get_dpi() .. ' -width ' ..
--                         with_dpi(400) .. ' -show drun -theme ' ..
--                         filesystem.get_configuration_dir() ..
--                         '/configuration/rofi.rasi -run-command "/bin/bash -c -i \'shopt -s expand_aliases; {cmd}\'"'
local rofi_command = "/usr/bin/rofi -show drun -modi drun -show-icons -font 'FantasqueSansMono 10'"

return {
    -- List of apps to start by default on some actions
    default = {
        terminal = 'env termite',
        rofi = rofi_command,
        lock = 'i3lock-fancy',
        quake = 'termite',
        screenshot = '~/.config/awesome/configuration/utils/screenshot -m',
        region_screenshot = '~/.config/awesome/configuration/utils/screenshot -r',
        delayed_screenshot = '~/.config/awesome/configuration/utils/screenshot --delayed -r',

        -- Editing these also edits the default program
        -- associated with each tag/workspace
        browser = 'env firefox',
        editor = 'code', -- gui text editor
        social = 'env discord',
        game = rofi_command,
        files = 'thunar',
        music = spotify
    },
}
