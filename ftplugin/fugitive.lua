-- Git push asynchronously.
vim.keymap.set("n", "<leader>gp", function()
    local cmd = "push --force-with-lease"
    if vim.fn.exists(":Dispatch") then
        vim.cmd.Dispatch("git " .. cmd)
    else
        vim.cmd.Git(cmd)
    end
    vim.cmd("echo 'Pushing ...'")
end)

-- Close fugitive window by just pressing 'q'.
vim.keymap.set("n", "q", ":q<cr>")
