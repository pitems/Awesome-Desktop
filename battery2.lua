--- {{{ Battery Charge
  -- Icon
    baticon = widget({type = "imagebox" })
    baticon.image = image(beautiful.widget_batt)
    baticon.resize = false
    awful.widget.layout.margins[baticon] = { top = 3 }
    -- Percentage
    battpct = widget({ type = "textbox", align = "right" })
    vicious.register(battpct, vicious.widgets.bat, "$3", 61, "BAT0")
  -- Meter
    battbar = awful.widget.progressbar()
    battbar:set_width(50)
    battbar:set_height(10)
    battbar:set_vertical(false)
    battbar:set_background_color("#3F3F3F")
    battbar:set_border_color(beautiful.bg_focus )
    battbar:set_color("#ff6565" )
    vicious.register(battbar, vicious.widgets.bat, "$2", 61, "BAT0")
  -- Align progressbar
    awful.widget.layout.margins[battbar.widget] = { top = 4 }
--- }}}
