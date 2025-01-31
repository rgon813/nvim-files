return {
	{ "github/copilot.vim" },
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		branch = "canary",
		dependencies = {
			{ "github/copilot.vim" }, -- or github/copilot.vim
		},
		opts = {
			debug = true, -- Enable debugging
		},
		keys = {
			{
				"<leader>ccq",
				function()
					local input = vim.fn.input("Quick Chat: ")
					if input ~= "" then
						local cc = require("CopilotChat")
						cc.ask(input, { selection = require("CopilotChat.select").buffer })
					end
				end,
				desc = "CopilotChat - Quick chat",
				mode = "n",
			},
			{
				"<leader>cct",
				function()
					local cc = require("CopilotChat")
					cc.ask(
						[[Write tests for this please. These tests should cover the happy path
            and any error handling within each function.]],
						{ selection = require("CopilotChat.select").buffer }
					)
				end,
				desc = "CopilotChat - Write Tests for Buffer",
				mode = "n",
			},
			{
				"<leader>cch",
				function()
					local actions = require("CopilotChat.actions")
					require("CopilotChat.integrations.telescope").pick(actions.help_actions())
				end,
				desc = "CopilotChat - Help actions",
				mode = "n",
			},
			-- Show prompts actions with telescope
			{
				"<leader>ccp",
				function()
					local actions = require("CopilotChat.actions")
					require("CopilotChat.integrations.telescope").pick(actions.prompt_actions())
				end,
				desc = "CopilotChat - Prompt actions",
				mode = "n",
			},
		},
	},
	-- {
	--   'Exafunction/codeium.vim',
	--   event = 'BufEnter',
	--   init = function()
	--     vim.keymap.set('i', '<c-]>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
	--     vim.keymap.set('i', '<c-[>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
	--     vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
	--   end
	-- }
}
