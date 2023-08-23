return function(client, bufnr)
    if client.name == "rust_analyzer" then
        local rt = require("rust-tools")
        -- Hover actions
        vim.keymap.set("n", "<leader><", rt.hover_actions.hover_actions, { buffer = bufnr })
        -- Code action groups
        vim.keymap.set("n", "<leader>>", rt.code_action_group.code_action_group, { buffer = bufnr })
    end
end
