function FormatAllBuffers()
  for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
    if vim.api.nvim_buf_is_loaded(bufnr) and vim.bo[bufnr].modifiable then
      require("conform").format({ bufnr = bufnr })
    end
  end
end

vim.api.nvim_create_user_command("FormatAll", FormatAllBuffers, { desc = "Format all buffers" })

