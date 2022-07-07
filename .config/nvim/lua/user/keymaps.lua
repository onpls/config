local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",
--   pending_modifier = "o",


---------------------------
------- NAVIGATION --------
---------------------------

-- down
keymap("n", "h",     "j",      opts)
keymap("v", "h",     "j",      opts)
keymap("x", "h",     "j",      opts)
keymap("n", "H",     "}",      opts)
keymap("v", "H",     "}",      opts)
keymap("x", "H",     "}",      opts)
keymap("n", "<Down>", "10j", opts)
keymap("v", "<Down>", "10j", opts)
keymap("x", "<Down>", "10j", opts)

-- up
keymap("n", "t",     "k",      opts)
keymap("v", "t",     "k",      opts)
keymap("x", "t",     "k",      opts)
keymap("n", "T",     "{",      opts)
keymap("v", "T",     "{",      opts)
keymap("x", "T",     "{",      opts)
keymap("n", "<Up>", "10k", opts)
keymap("v", "<Up>", "10k", opts)
keymap("x", "<Up>", "10k", opts)

-- left
keymap("n",    "d",  "h", opts)
keymap("v",    "d",  "h", opts)
keymap("x",    "d",  "h", opts)
keymap("n", "<Left>", "<C-w>h", opts)
keymap("n", "<S-d>", ":bprevious<CR>", opts)

-- right
keymap("n",    "n",  "l", opts)
keymap("v",    "n",  "l", opts)
keymap("x",    "n",  "l", opts)
keymap("n", "<Right>", "<C-w>l", opts)
keymap("n", "<S-n>", ":bnext<CR>", opts)

-- start of line
keymap("n", "v", "^", opts)
keymap("v", "v", "^", opts)
keymap("x", "v", "^", opts)

-- end of line
keymap("n", "z", "$", opts)
keymap("v", "z", "$", opts)
keymap("x", "z", "$", opts)

-- back
keymap("n", "c", "b", opts)
keymap("v", "c", "b", opts)
keymap("x", "c", "b", opts)
keymap("n", "C", "B", opts)
keymap("v", "C", "B", opts)
keymap("x", "C", "B", opts)

-- word
keymap("n", "r", "w", opts)
keymap("v", "r", "w", opts)
keymap("x", "r", "w", opts)
keymap("n", "R", "W", opts)
keymap("v", "R", "W", opts)
keymap("x", "R", "W", opts)

-- end
keymap("n", "s", "e", opts)
keymap("v", "s", "e", opts)
keymap("x", "s", "e", opts)
keymap("n", "S", "E", opts)
keymap("v", "S", "E", opts)
keymap("x", "S", "E", opts)

-- to
keymap("n", "l", "t", opts)
keymap("v", "l", "t", opts)
keymap("x", "l", "t", opts)

-- before
keymap("n", "m", "f", opts)
keymap("v", "m", "f", opts)
keymap("x", "m", "f", opts)

-- %
keymap("n", "q", "%", opts)
keymap("v", "q", "%", opts)
keymap("x", "q", "%", opts)

-- search results
keymap("n", "<Tab>",   "n", opts)
keymap("n", "<S-Tab>", "N", opts)

-----------------------------------------------
--------- OPERATOR PENDING MODIFIERS ----------
-----------------------------------------------

-- motions
keymap("o", "<Return>", "l", opts)
keymap("o", "r", "w", opts)
keymap("o", "R", "W", opts)
keymap("o", "c", "b", opts)
keymap("o", "C", "B", opts)
keymap("o", "s", "e", opts)
keymap("o", "z", "$", opts)
keymap("o", "v", "^", opts)
keymap("o", "V", "0", opts)

-- insides
keymap("o", "h", "i(", opts)
keymap("o", "t", "i[", opts)
keymap("o", "n", "i{", opts)
keymap("o", "<", "i<", opts)
keymap("o", "l", "i'", opts)
keymap("o", 'm', 'i"', opts)

-- to, before
modes = {'n', 'x', 'v'}
dirs = {'f', 'F'}
trigs = {'<CR>', '<Space>'}
for i = 1, 3 do
  for j = 1, 2 do
    keymap(modes[i], trigs[j] .. "a", dirs[j] .. '=', opts)
    keymap(modes[i], trigs[j] .. "b", dirs[j] .. ".", opts)
    keymap(modes[i], trigs[j] .. "c", dirs[j] .. "]", opts)
    keymap(modes[i], trigs[j] .. "d", dirs[j] .. "<", opts)
    keymap(modes[i], trigs[j] .. "e", dirs[j] .. "/", opts)
    keymap(modes[i], trigs[j] .. "f", dirs[j] .. "%", opts)
    keymap(modes[i], trigs[j] .. "g", dirs[j] .. ")", opts)
    keymap(modes[i], trigs[j] .. "h", dirs[j] .. "(", opts)
    keymap(modes[i], trigs[j] .. "i", dirs[j] .. "\\", opts)
    keymap(modes[i], trigs[j] .. "j", dirs[j] .. '*', opts)
    keymap(modes[i], trigs[j] .. "k", dirs[j] .. '~', opts)
    keymap(modes[i], trigs[j] .. "l", dirs[j] .. "'", opts)
    keymap(modes[i], trigs[j] .. 'm', dirs[j] .. '"', opts)
    keymap(modes[i], trigs[j] .. "n", dirs[j] .. "{", opts)
    keymap(modes[i], trigs[j] .. "o", dirs[j] .. "-", opts)
    keymap(modes[i], trigs[j] .. "p", dirs[j] .. '!', opts)
    keymap(modes[i], trigs[j] .. "q", dirs[j] .. "`", opts)
    keymap(modes[i], trigs[j] .. "r", dirs[j] .. "}", opts)
    keymap(modes[i], trigs[j] .. "s", dirs[j] .. '>', opts)
    keymap(modes[i], trigs[j] .. "t", dirs[j] .. "[", opts)
    keymap(modes[i], trigs[j] .. "u", dirs[j] .. "_", opts)
    keymap(modes[i], trigs[j] .. "v", dirs[j] .. ";", opts)
    keymap(modes[i], trigs[j] .. "w", dirs[j] .. '+', opts)
    keymap(modes[i], trigs[j] .. "x", dirs[j] .. "|", opts)
    keymap(modes[i], trigs[j] .. "y", dirs[j] .. ",", opts)
    keymap(modes[i], trigs[j] .. "z", dirs[j] .. ":", opts)
  end
end

--------------------------
--------- ACTION ---------
--------------------------

-- change
keymap("n", "y",  '"_c',  opts)
keymap("v", "y",  '"_c',  opts)
keymap("x", "y",  '"_c',  opts)
keymap("n", "yy", '"_cc', opts)

-- delete
keymap("n", "b",  "d",  opts)
keymap("v", "b",  "d",  opts)
keymap("x", "b",  "d",  opts)
keymap("n", "bb", "dd", opts)

-- yank
keymap("n", "k",  "y",  opts)
keymap("v", "k",  "y",  opts)
keymap("x", "k",  "y",  opts)
keymap("n", "kk", "yy", opts)

-- paste
keymap("v", "p", '"_dP', opts)

-- undo
keymap("n", "f", "u",     opts)
keymap("n", "F", "<C-r>", opts)

-- G-moves
keymap("n", "go", "<C-o>", opts)
keymap("n", "gh", "G",     opts)

-- intend
keymap("v", "D", "<gv", opts)
keymap("v", "N", ">gv", opts)

-- resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts)

---------------------------
------- MODE SWITCH -------
---------------------------

-- enter visual mode
keymap("n", "e", "v", opts)
keymap("v", "e", "v", opts)
keymap("x", "e", "v", opts)
keymap("n", "j", "V", opts)
keymap("v", "j", "V", opts)
keymap("x", "j", "V", opts)
keymap("n", 'E', "<C-v>", opts)
keymap("v", 'E', "<C-v>", opts)
keymap("x", 'E', "<C-v>", opts)

-- enter insert mode
keymap("n", "o", "o", opts)
keymap("n", "O", "O", opts)
keymap("n", "a", "i", opts)
keymap("n", "A", "I", opts)
keymap("n", "u", "a", opts)
keymap("n", "U", "A", opts)

--------------------------------------------
----------------- Plugins  -----------------
--------------------------------------------
keymap("n", "i", "ia", opts)

keymap("n", "<C-h>", "<cmd>nohlsearch<CR>", opts)
keymap("n", "gn", "*<cmd>nohlsearch<CR>", opts)
keymap("n", "<C-r>", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)

keymap("n", "<C-z>", "<cmd>vsplit<cr>", opts)
keymap("n", "<C-v>", "<cmd>hsplit<cr>", opts)
keymap("n", "<C-g>", "<cmd>terminal<cr>", opts)
keymap("n", "<C-t>", "<cmd>ToggleTerm direction=float<cr>", opts)
keymap("n", "Q",     "<cmd>Bdelete!<CR>", opts)
keymap("n", "X",     "<cmd>q!<CR>", opts)

keymap("n", "wi", "<cmd>set foldmethod=indent<CR>", opts)
keymap("n", "wm", "<cmd>set foldmethod=manual<CR>", opts)
keymap("v", "w", "zf", opts)
keymap("n", "w", "z", opts)
keymap("n", "wf", "zf", opts)

keymap("n", "@", "<cmd>NvimTreeToggle<cr>", opts)
keymap("n", "#", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "&", "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>", opts)
keymap("n", "$", "<cmd>Telescope lsp_references<cr>", opts)
