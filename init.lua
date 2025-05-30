require 'core.options'
require 'core.keymaps'
_G.vim = vim or {}
-- Set up diagnostic signs with the new API before LSP loads
vim.diagnostic.config {
  signs = {
    error = { text = '' },
    warn = { text = '' },
    info = { text = '' },
    hint = { text = '' },
  },
  -- other diagnostic config...
}

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end

local rtp = vim.opt.rtp
rtp:prepend(lazypath)

require('lazy').setup {
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      'MunifTanjim/nui.nvim',
    },
    lazy = false,
    opts = {},
  },
  require 'plugins.colortheme',
  require 'plugins.neotree',
  require 'plugins.bufferline',
  require 'plugins.lualine',
  require 'plugins.treesitter',
  require 'plugins.telescope',
  require 'plugins.lsp',
  require 'plugins.cmp',
  require 'plugins.autocompletion',
  require 'plugins.gitsigns',
  require 'plugins.autoformatting',
  require 'plugins.alpha',
  require 'plugins.indent-blankline',
  require 'plugins.misc',
}
