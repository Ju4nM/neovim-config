-- Leader key
vim.g.mapleader = " "

local configs = {
    rnu = true, -- Relative numbers
    nu = true, -- Numbers
    clipboard = "unnamedplus",
    wrap = false,
    mouse = "a",
    title = true,
    list = false,
    smartcase = true,
    encoding = "UTF-8",
    --colorscheme = "ayu-mirage",

    -- Indent 
    tabstop = 2,
    shiftwidth = 2,
    softtabstop = 2,
    smartindent = true,
    shiftround = true,
    expandtab = true,
    autoindent = true,
    cindent = true,
    -----------------
    hidden = true,
    lazyredraw = true,
    ttyfast = true,
    showmatch = true,
    showmode = false,
    -- cursorline = true,
    syntax = "on",
    termguicolors = true,
}

for key, value in pairs(configs) do
    vim.o[key] = value
end

