vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>t", function()
  local dir = vim.fn.getcwd()
  if vim.fn.has("win32") == 1 then
    -- abre cmd en un split abajo
    vim.cmd("botright 15sp | term powershell")
    -- cambia al cwd de nvim automáticamente
    vim.fn.chansend(vim.b.terminal_job_id, "cd " .. dir .. "\r")
  else
    vim.cmd("botright 15sp | term")
  end
end, { desc = "Abrir terminal abajo en cwd" })


-- Bloquear flechas en modo normal
vim.keymap.set('n', '<Up>', '<Nop>')
vim.keymap.set('n', '<Down>', '<Nop>')
vim.keymap.set('n', '<Left>', '<Nop>')
vim.keymap.set('n', '<Right>', '<Nop>')

-- Bloquear flechas en modo inserción
vim.keymap.set('i', '<Up>', '<Nop>')
vim.keymap.set('i', '<Down>', '<Nop>')
vim.keymap.set('i', '<Left>', '<Nop>')
vim.keymap.set('i', '<Right>', '<Nop>')

-- Bloquear flechas en modo visual
vim.keymap.set('v', '<Up>', '<Nop>')
vim.keymap.set('v', '<Down>', '<Nop>')
vim.keymap.set('v', '<Left>', '<Nop>')
vim.keymap.set('v', '<Right>', '<Nop>')
