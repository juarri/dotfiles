-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local set = vim.keymap.set

-- Git Worktree
set("n", "<leader>gw", function()
  require("telescope").extensions.git_worktree.git_worktrees()
end, { desc = "Search worktree" })

set("n", "<leader>gW", function()
  require("telescope").extensions.git_worktree.create_git_worktree()
end, { desc = "Create worktree" })
