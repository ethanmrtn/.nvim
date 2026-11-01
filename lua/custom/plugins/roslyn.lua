vim.pack.add({ {src = "https://github.com/seblyng/roslyn.nvim" } })

require("roslyn").setup({

  extensions = {
    razor = {
    enabled = true
    }
  }
})
