return {
  'mrcjkb/rustaceanvim',
  dependencies = {
    'neovim/nvim-lspconfig',
  },
  version = '^5', -- Recommended
  lazy = false, -- This plugin is already lazy
  ft = 'rust',
  init = function()
    -- Temporary workaround until the next update in Feb 2025
    -- https://github.com/neovim/neovim/issues/30985
    for _, method in ipairs { 'textDocument/diagnostic', 'workspace/diagnostic' } do
      local default_diagnostic_handler = vim.lsp.handlers[method]
      vim.lsp.handlers[method] = function(err, result, context, config)
        if err ~= nil and err.code == -32802 then
          return
        end
        return default_diagnostic_handler(err, result, context, config)
      end
    end
  end,
}
