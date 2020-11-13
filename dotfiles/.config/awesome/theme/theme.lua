local theme_assets = require("beautiful.theme_assets")
local gears = require("gears")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local xrdb = xresources.get_current_theme()
local gfs = require("gears.filesystem")
-- local themes_path = gfs.get_themes_dir()
local themes_path = "/home/mat/.config/awesome/theme/"
local accent = "#493960"
-- inherit default theme
local theme = { }

-- dashboard required
local mat_colors = require("theme.mat-colors")
theme.primary = mat_colors.indigo
theme.background = mat_colors.grey

theme.font                 = "Ubuntu Mono 8"
theme.icon_theme           = "Papirus-Dark"
theme.bg_normal            = xrdb.background
theme.bg_focus             = xrdb.background
theme.bg_urgent            = xrdb.color5
theme.bg_minimize          = xrdb.background
theme.bg_systray           = theme.bg_normal
theme.fg_normal            = xrdb.foreground
theme.fg_focus             = xrdb.foreground
theme.fg_urgent            = theme.fg_normal
theme.fg_minimize          = theme.fg_normal
theme.useless_gap          = dpi(3)
theme.border_width         = dpi(3)
theme.border_normal        = theme.bg_normal
theme.border_focus         = xrdb.color8
-- Taglist 
theme.taglist_fg_occupied  = "#707070"
theme.taglist_fg_empty     = "#707070"
theme.taglist_fg_focus     = theme.fg_focus
theme.taglist_fg_urgent    = xrdb.color5
theme.taglist_fg_minimize  = xrdb.color0
theme.taglist_bg_normal    = theme.bg_normal
theme.taglist_bg_focus     = theme.bg_normal
theme.taglist_bg_urgent    = theme.bg_normal
theme.taglist_bg_minimize  = theme.bg_normal
-- Tasklist 
theme.tasklist_fg_normal   = "#707070"
theme.tasklist_fg_focus    = theme.fg_focus
theme.tasklist_fg_urgent   = theme.fg_normal
theme.tasklist_fg_minimize = theme.fg_normal
theme.tasklist_bg_normal   = theme.bg_normal
theme.tasklist_bg_focus    = theme.bg_normal
theme.tasklist_bg_urgent   = xrdb.color5
theme.tasklist_bg_minimize = xrdb.color0

theme.tasklist_shape                        = gears.shape.rectangle
theme.tasklist_shape_border_width           = 1
theme.tasklist_shape_border_width_minimized = 3
theme.tasklist_shape_border_color_focus     = xrdb.foreground
theme.tasklist_shape_border_color_minimized = theme.bg_normal

-- Menu
theme.menu_submenu_icon = themes_path.."submenu.png"
theme.menu_height = dpi(16)
theme.menu_width  = dpi(100)
theme.menu_fg_normal = "#707070"
theme.menu_fg_focus = theme.fg_focus

-- Notification
theme.notification_icon_size    = 80
theme.notification_border_width = 10
theme.notification_max_width    = 400
theme.notification_max          = 400
theme.notification_margin       = 4
theme.notification_border_color = accent
theme.notification_opacity      = 80

-- Tooltips
theme.tooltip_bg           = bg_normal
theme.tooltip_border_width = 0
theme.tooltip_shape        = function(cr, w, h) gears.shape.rounded_rect(cr, w, h, dpi(6)) end

-- Various
theme.hotkeys_bg            = "#333333"
theme.tooltip_fg            = theme.fg_normal
theme.tooltip_bg            = theme.bg_normal
theme.awesome_icon          = themes_path .. "icons/dashboard.svg"
theme.tasklist_disable_icon = true
theme.systray_icon_spacing  = 1

-- Occupied workspace marker
theme.taglist_squares_sel   = themes_path .. "taglist/squarefw.png"
theme.taglist_squares_unsel = themes_path .. "taglist/squarew.png"

-- Layout icons 
theme.layout_tileleft   = themes_path.."layout/tileleft.png"
theme.layout_floating   = themes_path.."layout/floating.png"
theme.layout_max        = themes_path.."layout/max.png"
theme.layout_tile       = themes_path.."layout/tile.png"

-- Close button
theme.titlebar_close_button_normal              = themes_path .. "titlebar/close_normal.svg"
theme.titlebar_close_button_focus               = themes_path .. "titlebar/close_focus.svg"

-- Ontop button
theme.titlebar_ontop_button_normal_inactive     = themes_path .. "titlebar/ontop_normal_inactive.svg"
theme.titlebar_ontop_button_focus_inactive      = themes_path .. "titlebar/ontop_focus_inactive.svg"
theme.titlebar_ontop_button_normal_active       = themes_path .. "titlebar/ontop_normal_active.svg"
theme.titlebar_ontop_button_focus_active        = themes_path .. "titlebar/ontop_focus_active.svg"

-- Sticky button
theme.titlebar_sticky_button_normal_inactive    = themes_path .. "titlebar/sticky_normal_inactive.svg"
theme.titlebar_sticky_button_focus_inactive     = themes_path .. "titlebar/sticky_focus_inactive.svg"
theme.titlebar_sticky_button_normal_active      = themes_path .. "titlebar/sticky_normal_active.svg"
theme.titlebar_sticky_button_focus_active       = themes_path .. "titlebar/sticky_focus_active.svg"

-- Maximized button
theme.titlebar_maximized_button_normal_inactive = themes_path .. "titlebar/maximized_normal_inactive.svg"
theme.titlebar_maximized_button_focus_inactive  = themes_path .. "titlebar/maximized_focus_inactive.svg"
theme.titlebar_maximized_button_normal_active   = themes_path .. "titlebar/maximized_normal_active.svg"
theme.titlebar_maximized_button_focus_active    = themes_path .. "titlebar/maximized_focus_active.svg"

-- Minimize button
theme.titlebar_minimize_button_normal_inactive = themes_path .. "titlebar/minimize_normal_inactive.svg"
theme.titlebar_minimize_button_focus_inactive  = themes_path .. "titlebar/minimize_focus_inactive.svg"
theme.titlebar_minimize_button_normal_active   = themes_path .. "titlebar/minimize_normal_active.svg"
theme.titlebar_minimize_button_focus_active    = themes_path .. "titlebar/minimize_focus_active.svg"

return theme
