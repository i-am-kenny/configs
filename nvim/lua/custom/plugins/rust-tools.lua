return {
	"simrat39/rust-tools.nvim",
	version = "*",
	dependencies = {},
	config = function()
		require("rust-tools").setup {
            tools = {
                inlay_hints = {
                    highlight = "Whitespace",
                },
            },

            server = {
                on_attach = function(_, bufnr)
                    -- Hover actions
                    vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
                    -- Code action groups
                    vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
                end,
            },
        }

        require('rust-tools').inlay_hints.enable()
	end,
}