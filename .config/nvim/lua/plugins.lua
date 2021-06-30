local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
    execute 'packadd packer.nvim'
end

return require('packer').startup(function(use)

    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- Autopairs
    use {"windwp/nvim-autopairs"}
    -- lsp
    use {"neovim/nvim-lspconfig"}
    use {"hrsh7th/nvim-compe"}
    use "windwp/nvim-spectre"
    use "kabouzeid/nvim-lspinstall"
    -- Floating terminal
    use {
        "numtostr/FTerm.nvim",
        config = function()
            require("FTerm").setup()
        end
    }
        -- Comments
        use {
            "terrortylor/nvim-comment",
            cmd = "CommentToggle",
            config = function()
                require('nvim_comment').setup()
            end
        }

    -- whichkey
    use {"folke/which-key.nvim"}

    -- Post-install/update hook with neovim command
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- explorer
    use { 'kyazdani42/nvim-tree.lua'}

    use 'joshdick/onedark.vim'

    -- Add git related info in the signs columns and popups
    use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'} }

    use {
        'glepnir/galaxyline.nvim',
        branch = 'main',
        -- your statusline
        -- config = function() require'my_statusline' end,
        -- some optional icons
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
  use {
        "romgrk/barbar.nvim",

        config = function()
            vim.api.nvim_set_keymap('n', '<TAB>', ':BufferNext<CR>',
                                    {noremap = true, silent = true})
            vim.api.nvim_set_keymap('n', '<S-TAB>', ':BufferPrevious<CR>',
                                    {noremap = true, silent = true})
            vim.api.nvim_set_keymap('n', '<S-x>', ':BufferClose<CR>',
                                    {noremap = true, silent = true})
        end,
        event = "BufRead"

    }   -- telescope
    use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}} }
end)
