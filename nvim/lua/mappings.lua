local M = {}

M.n = {
    ["<leader>ss"] = { ":setlocal spell! spelllang=en_gb<CR>", "toggle spelling" },
    ["Q"] = { "@q", "fast q macro" },
    ["<C-q>"] = { ":bd!<CR>", "buffer delete" },
    ["<C-l>"] = { ":bnext<CR>", "next buffer" },
    ["<C-h>"] = { ":bprevious<CR>", "previous buffer" },
    ["<C-n>"] = { ":NvimTreeToggle<CR>", "toggle nvim-tree" },
    ["<leader>S"] = { ":UltiSnipsEdit<CR>", "edit ultisnips snippet file" },
    ["<A-h>"] = { ":ToggleHorizontalTerminal<CR>", "toggle horizontal terminal" },
    ["<A-v>"] = { ":ToggleVerticalTerminal<CR>", "toggle vertical terminal" },
    ["<leader>u"] = { ":UndotreeToggle<CR>:UndotreeFocus<CR>", "toggle undo tree"},
    ["<leader>C"] = {":w<CR>:VimtexCompile<CR>", "Save and start compilation"},
    ["<leader>E"] = {":w<CR>:VimtexErrors<CR>", "Show LaTeX Errors"},
}
-- Insert Mode Mappings
M.i = {
    ["jj"] = { "<Esc>:w<CR>", "save escape", opts = { nowait = true } },
    ["<C-l>"] = { "<c-g>u<Esc>[s1z=`]a<c-g>u", "correct last spelling mistake" },
}

-- Visual Mode Mappings
M.v = {
    ["<"] = { "<gv", "" },
    [">"] = { ">gv", "" },
}

-- Fzf-lua Mappings
M.fzf_lua = {
    ["<leader>f"] = {
        name = "fzf files",
        f = { ":lua require('fzf-lua').files({ cwd = '~/' })<CR>", "fzf home dir" },
        p = { ":lua require('fzf-lua').files()<CR>", "fzf project" },
        o = { ":FzfLua oldfiles<CR>", "opened files history" },
        a = { ":FzfLua args<CR>", "argument list" },
        c = { ":FzfLua colorschemes<CR>", "color schemes" },
        k = { ":FzfLua keymaps<CR>", "keymaps" },
    },
    ["<C-f>"] = { ":FzfLua grep_project<CR>", "search all project lines" },
}


return M
