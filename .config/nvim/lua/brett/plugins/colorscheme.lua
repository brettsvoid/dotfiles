return {
    'catppuccin/nvim', 
    name = 'catppuccin', 
    -- make sure to load this before all the other start plugins
    priority = 1000,
    config = function ()
        -- load the colorscheme here
        vim.cmd.colorscheme 'catppuccin'


        vim.api.nvim_set_hl(0, 'NvimTreeNormal', { bg = 'none' })
        vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
	    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })

        require('catppuccin').setup({
            flavour = 'macchiato',
            term_colors = true,
            transparent_background = true, -- disables setting the background color
             dim_inactive = {
                 enabled = true, -- dims the background color of inactive window
                 shade = "dark",
                 percentage = 0.15, -- percentage of the shade to apply to the inactive window
             },
            integrations = {
                gitsigns = true,
                nvimtree = {
                    enabled = true,
                    show_root = false, -- makes the root folder not transparent
                    transparent_panel = true, -- make the panel transparent
                },
                telescope = true,
                treesitter = true,
                harpoon = true,
                --mason = true,
            }
        })
    end,
}
