vim.pack.add({
  { src = "https://github.com/seblyng/roslyn.nvim" },
})

vim.lsp.config("roslyn", {
  cmd = { vim.fn.exepath("roslyn-language-server"), "--stdio" },
  settings = {
    ["csharp|inlay_hints"] = {
      csharp_enable_inlay_hints_for_implicit_object_creation = true,
      csharp_enable_inlay_hints_for_implicit_variable_types = true,
    },
    ["csharp|code_lens"] = {
      dotnet_enable_references_code_lens = true,
    },
    ["csharp|background_analysis"] = {
      dotnet_analyzer_diagnostics_scope = "fullSolution",
      dotnet_compiler_diagnostics_scope = "fullSolution",
    },
  },
})

require("roslyn").setup({
  extensions = {
    razor = {
      enabled = true,
    },
  },
})

vim.lsp.config("html", {
  cmd = { "vscode-html-language-server", "--stdio" },
  filetypes = { "html", "razor" },
})

vim.lsp.enable("html")

vim.lsp.config("svelte", {
    cmd = { "svelte-language-server", "--stdio" },
    filetypes = {"svelte"}
})
