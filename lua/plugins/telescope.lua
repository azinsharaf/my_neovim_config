  return {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      -- Fuzzy Finder Algorithm which requires local dependencies to be built.
      -- Only load if `make` is available. Make sure you have the system
      -- requirements installed.
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        -- NOTE: If you are having trouble with this installation,
        --       refer to the README for telescope-fzf-native for more instructions.
        build = 'make',
        cond = function()
          return vim.fn.executable 'make' == 1
        end,
      },
	  {
		'nvim-tree/nvim-web-devicons',
	  },
	 config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")
		
		telescope.setup({
			defaults = {
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous, --move to prev result
						["<C-j>"] = actions.move_selection_next, --move to next result
					}
				}
			}
		})
		
		telescope.load_extensions("fzf");
	
	 
	 end
    },
  }


