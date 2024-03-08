return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && npm install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }
  end,
  ft = { "markdown" },

  config = function()
    vim.keymap.set('n', '<C-s>', ':MarkdownPreview<CR>')
    vim.keymap.set('n', '<A-s>', ':MarkdownPreviewStop<CR>')
    vim.keymap.set('n', '<leader>mdt', ':MarkdownPreviewToggle<CR>')
  end
}

