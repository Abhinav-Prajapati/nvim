-- load color scheam before every thing else by seting the priority to a maximum number
return {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
	    vim.cmd('colorscheme nordic')
    end,
}
