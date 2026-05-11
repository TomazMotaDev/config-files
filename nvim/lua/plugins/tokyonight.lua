return {
    "folke/tokyonight.nvim", 
    name = "tokyonight",
    lazy = false,
    priority = 1000,
    opts = {}, 
    config = function()
        --[[require.("tokyonight").setup({
            style = night,
            transparent = true,
            on_highlight = fuction(hl, c)
                
                hl.TelescopeNormal = { fg = c.fg_dark, }
                
                hl.TelescopeBorder = { fg = c.bg_dark, }
            
            end
        })--]]
        vim.cmd.colorscheme "tokyonight-night"
    end
    
}
