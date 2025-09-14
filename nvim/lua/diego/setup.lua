vim.cmd("syntax on")
vim.cmd("filetype plugin indent on")

vim.cmd("colorscheme retrobox")

vim.opt.mouse           = ""
vim.o.termguicolors     = true
vim.opt.cursorline 	    = true

vim.opt.number 		    = true
vim.opt.relativenumber  = true

vim.opt.colorcolumn     = "80"
vim.opt.tabstop		    = 4
vim.opt.softtabstop	    = 4
vim.opt.shiftwidth      = 4
vim.opt.expandtab	    = true
vim.opt.smarttab	    = true

vim.opt.smartindent	    = true
vim.opt.autoindent	    = true

vim.opt.wrap		    = false

vim.opt.swapfile        = false
vim.opt.backup          = false
vim.opt.undofile	    = true

vim.opt.scrolloff       = 8

vim.opt.clipboard:append('unnamedplus')

vim.o.updatetime        = 50

vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = "*.h",
    callback = function()
        local template_path
        if vim.loop.os_uname().sysname == "Windows_NT" then
            template_path = os.getenv("LOCALAPPDATA") .. "\\nvim\\templates\\skeleton.h"
        else
            template_path = vim.fn.expand("~/.config/nvim/templates/skeleton.h")
        end

        -- Insertar template
        vim.cmd("0r " .. template_path)

        -- Nombre base del archivo en mayúsculas (sin extensión)
        local base_name = vim.fn.expand("%:t:r"):upper()

        -- Generar número aleatorio (4 dígitos)
        math.randomseed(os.time())
        local random_num = math.random(1000, 9999)

        -- Construir guard: TEST_<número>_H
        local header_guard = string.format("%s_%d_H", base_name, random_num)

        -- Reemplazar FILE_NAME_H en todo el buffer
        vim.cmd(string.format("%%s/FILE_NAME_H/%s/g", header_guard))
    end
})
