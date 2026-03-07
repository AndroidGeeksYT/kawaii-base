local colors = require("base46").get_theme_tb("base_30")

local M = {
    KwChHeading = {
        fg = colors.black,
        bg = colors.blue,
        bold = true,
    },

    KwChSection = {
        bg = colors.purple,
    },

    KwChAsciiHeader = {
        fg = colors.baby_pink,
        bg = colors.purple,
    },
}

local cheatsheet_theme = require("kwconfig").cheatsheet.theme

if cheatsheet_theme == "grid" then
    M.KwChAsciiHeader = {
        fg = colors.blue,
    }

    local bgcols =
        { "blue", "red", "green", "yellow", "orange", "baby_pink", "purple", "white", "cyan", "vibrant_green", "teal" }

    for _, value in ipairs(bgcols) do
        M["KwChHead" .. value] = {
            fg = colors.black,
            bg = colors[value],
        }
    end
end

return M
