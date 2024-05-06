local opt = vim.opt 

-- Tab / Indentation
opt.tabstop = 2 -- This line sets the number of spaces inserted for each <Tab> character
opt.shiftwidth = 2 -- sets the number of spaces used for each step of (auto)indent. When you press Enter to start a new line, the cursor will indent by this amount
opt.softtabstop = 2 -- sets the number of spaces that a <Tab> character counts for while editing. It's typically used for when you press <Tab> while you're editing code
opt.expandtab = true -- This line configures whether <Tab> characters are replaced by spaces when inserting text. When set to true, <Tab> characters will be replaced by spaces.
opt.smartindent = true -- This line enables smart indentation, which means Neovim will automatically adjust the indentation level based on the context of the code.
opt.wrap = false

-- Appearance
opt.number = true
opt.relativenumber = true
opt.termguicolors = true -- This line enables true color support in the terminal
--opt.colorcolumn = "100"
--opt.cmdheight = 1
opt.scrolloff = 10 -- sets the minimum number of lines to keep above and below the cursor while scrolling
opt.completeopt = "menuone,noinsert,noselect"
