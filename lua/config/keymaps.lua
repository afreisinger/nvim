-- Tmux navigation (requires vim-tmux-navigator / nvim-tmux-navigation in tmux)
local ok, nav = pcall(require, "nvim-tmux-navigation")
if ok then
  vim.keymap.set("n", "<C-h>", nav.NvimTmuxNavigateLeft, { desc = "Navigate left" })
  vim.keymap.set("n", "<C-j>", nav.NvimTmuxNavigateDown, { desc = "Navigate down" })
  vim.keymap.set("n", "<C-k>", nav.NvimTmuxNavigateUp, { desc = "Navigate up" })
  vim.keymap.set("n", "<C-l>", nav.NvimTmuxNavigateRight, { desc = "Navigate right" })
  vim.keymap.set("n", "<C-\\>", nav.NvimTmuxNavigateLastActive, { desc = "Navigate last active" })
end

-- Delete other buffers but the current one
vim.keymap.set("n", "<leader>bq", '<Esc>:%bdelete|edit #|normal`"<Return>', { desc = "Delete other buffers" })