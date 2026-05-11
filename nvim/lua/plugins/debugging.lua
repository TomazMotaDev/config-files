return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
	--	"tomblind/local-lua-debugger-vscode",
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")

		--require dap das linguagens
		--require("local-lua-debugger-vscode").setup()

		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		vim.keymap.set("n", "<Leader>dt", function()
			require("dap").toggle_breakpoint()
		end)
		vim.keymap.set("n", "<Leader>dc", function()
			require("dap").continue()
		end)
	end,
}
