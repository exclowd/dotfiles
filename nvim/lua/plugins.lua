vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({
                with_sync = true
            })
            ts_update()
        end
    }

    -- telescope
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        requires = {{'nvim-lua/plenary.nvim'}}
    }

    use 'airblade/vim-gitgutter'

    use 'tpope/vim-fugitive'

    use 'preservim/nerdcommenter'

    use {
        'folke/tokyonight.nvim',
        branch = 'main'
    }

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons' -- optional, for file icons
        }
    }

    use {
        'vim-airline/vim-airline',
        requires = {
            'vim-airline/vim-airline-themes'
        }
    }

    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP

    use "lukas-reineke/indent-blankline.nvim"    

end)
