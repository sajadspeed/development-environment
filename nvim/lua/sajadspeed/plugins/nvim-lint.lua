return {
	"mfussenegger/nvim-lint",
	lazy = true,
	event = { "BufReadPre", "BufNewFile" }, -- to disableo, comment this out
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			javascript = { "eslint" },
			typescript = { "eslint" },
			javascriptreact = { "eslint" },
			typescriptreact = { "eslint" },
			python = { "pylint" },
			css = { "stylelint" },
			-- ["*"] = { "codespell" },
		}

		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint()
				-- lint.try_lint({ "codespell" }) -- helliolksjdf
			end,
		})

		-- vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave", "TextChanged" }, {
		-- 	group = lint_augroup, -- hellpa
		-- 	callback = function()
		-- 		lint.try_lint("codespell")
		-- 	end,
		-- })
		--
		-- vim.keymap.set("n", "<leader>L", function()
		-- 	lint.try_lint("codespell")
		-- end, { desc = "Trigger linting for current file" })
	end,
}
