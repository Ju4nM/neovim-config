require("bufferline").setup {
  options = {
    -- numbers = "buffer_id",
    indicator = {
      style = "underline"
    },
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        text_align = "right",
        separator = true,
      }
    },
    separator_style =  { "", "" }, --"slant", 
    enforce_regular_tabs = true,
    always_show_bufferline = true,
    diagnostics = "nvim_lsp",
  },
  highlights = {
    buffer_selected = {
      italic = false,
      bold = true,
      fg = "#dbb6ee",
    },
    diagnostic_selected = { italic = false },
    hint_selected = { italic = false },
    pick_selected = { italic = false },
    pick_visible = { italic = false },
    pick = { italic = false },
  },
}
