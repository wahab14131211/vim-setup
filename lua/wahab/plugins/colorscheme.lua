return {
    --plugin for everforest colorscheme
    "sainnhe/everforest",
    priority = 1000, --make sure to load this before all other plugins
    config = function()
        vim.cmd([[colorscheme everforest]]) --load the colorscheme here
    end,
}
