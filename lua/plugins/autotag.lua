return {
  'windwp/nvim-ts-autotag',
  event = 'VeryLazy', -- More efficient lazy-loading
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  opts = {
    -- Core options (no nesting inside 'opts'!)
    enable_close = true,
    enable_rename = true,
    enable_close_on_slash = false,
    -- Filetype-specific settings (new format)
    filetypes = {
      html = { enable_close = false },
      javascriptreact = true,
      typescriptreact = true,
      vue = true,
      svelte = true,
      markdown = true,
    },
    -- Skip auto-tagging for void elements (optional)
    skip_tags = {
      'area', 'base', 'br', 'col', 'embed', 'hr', 'img', 'input',
      'link', 'meta', 'param', 'source', 'track', 'wbr'
    }
  },
  -- Explicit setup (ensures compatibility)
  config = function(_, opts)
    require('nvim-ts-autotag').setup(opts)
  end
}
