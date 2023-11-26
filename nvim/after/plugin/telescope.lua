local builtin = require('telescope.builtin')
require('telescope').setup{ 
  defaults = { 
    file_ignore_patterns = { 
      "node_modules",
      "output",
      "bazel-.*",
      "dist",
      "venv"
    }
  }
}

local vks = function(mode, key, action, desc)
	vim.keymap.set(mode, key, action, { noremap = true, desc = desc })
end

vks('n', '<leader>ff', builtin.find_files, {})
vks('n', '<leader>fg', builtin.live_grep, {})
vks('n', '<leader>fb', builtin.buffers, {})


