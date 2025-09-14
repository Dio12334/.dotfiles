return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")
        harpoon:setup({})

        vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "Añadir archivo a Harpoon" })
        vim.keymap.set("n", "<leader>h", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Abrir menú Harpoon" })
        vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end, { desc = "Ir al archivo 1" })
        vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end, { desc = "Ir al archivo 2" })
        vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end, { desc = "Ir al archivo 3" })
        vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end, { desc = "Ir al archivo 4" })

        vim.keymap.set("n", "<leader>r1", function() harpoon:list():replace_at(1) end, { desc = "Reemplaza archivo 1 de Harpoon" })
        vim.keymap.set("n", "<leader>r2", function() harpoon:list():replace_at(2) end, { desc = "Reemplaza archivo 2 de Harpoon" })
        vim.keymap.set("n", "<leader>r3", function() harpoon:list():replace_at(3) end, { desc = "Reemplaza archivo 3 de Harpoon" })
        vim.keymap.set("n", "<leader>r4", function() harpoon:list():replace_at(4) end, { desc = "Reemplaza archivo 4 de Harpoon" })

    end,
}
