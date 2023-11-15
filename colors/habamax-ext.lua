vim.g.colors_name = 'habamax-ext'

-- First we will need lush, and the colorscheme we wish to modify
local lush = require('lush')
local habamax = require('lush_theme.habamax')

-- we can apply modifications ontop of the existing colorscheme
local spec = lush.extends({habamax}).with(function()
  return {
    -- Use the existing Comment group in habamax, but adjust the gui attribute
    Comment { fg = habamax.Comment.fg, bg = habamax.Comment.bg, gui = "italic" },
  }
end)

-- then pass the extended spec to lush for application
lush(spec)
