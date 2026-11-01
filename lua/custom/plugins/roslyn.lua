vim.pack.add({ {src = "https://github.com/seblyng/roslyn.nvim" } })

require("roslyn").setup({
  args = {
    "--logLevel=Information",
  },
  config = {
    -- Pass your typical on_attach capabilities here
    on_attach = function(client, bufnr)
      -- Keymaps for definition, hover, code actions, etc.
    end,
    capabilities = vim.lsp.protocol.make_client_capabilities(),
  },
})

vim.filetype.add({
  extension = {
    cshtml = "razor",
    razor = "razor",
  },
})

