local setup, lualine = pcall(require, "lualine")
if not setup then
  return
end

local lualine_nightfly = require("lualine.themes.nightfly")

local new_colors = {
  blue = "#65D1FF",
  green = "#3EFFDC",
  violet = "#FF61EF",
  yellow = "#FFDA7B",
  black = "#000000",
}

lualine_nightfly.normal.a.bg = new_colors.blue
lualine_nightfly.insert.a.bg = new_colors.green
lualine_nightfly.visual.a.bg = new_colors.violet
lualine_nightfly.command = {
  a = {
    gui = "bold",
    bg = new_colors.yellow,
    fg = new_colors.black,
  },
}

local function search_cnt()
  local res = vim.fn.searchcount()

  if res.total > 0 then
    return string.format("%s/%d %s", res.current, res.total, vim.fn.getreg("/"))
  else
    return ""
  end
end

-- configure lualine with modified theme
lualine.setup({
  options = {
    globalstatus = true,
    theme = lualine_nightfly,
    section_separators = '',
    components_separators = '',
    disabled_filetypes = {},
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch", "diff" },
    lualine_c = { "filename" },
    lualine_x = { "", "", "filetype" },
    lualine_y = { "diff" },
    lualine_z = { search_cnt, "location" },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = { "location" },
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = {},
})
