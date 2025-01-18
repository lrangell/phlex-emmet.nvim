local M = {}

function M.setup()
  local lspconfig = require("lspconfig")
  require("lspconfig.configs")["phlexemmetls"] = {
    default_config = {
      cmd = { "phlex_emmet_ls" },
      filetypes = { "ruby", },
      settings = {},
      root_dir = vim.fs.dirname
    },
  }


  lspconfig.phlexemmetls.setup({})
end

return M
