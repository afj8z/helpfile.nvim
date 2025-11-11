local M = {
	opts = {
		root_markers = {},
		helper_markers = {
			".gitignore",
			"Makefile",
			"package.json",
			"pyproject.toml",
			"Cargo.toml",
			"go.mod",
			"todo",
			"local-words",
			"README.md",
			".envrc",
			".project",
		},
		root_opts = {
			current_root = function(path)
				return path
			end,
			global_dir = string,
			usr_exceptions = {},
			home_access = true,
		},
		ignore_opts = {
			dirs = {
				".git",
				"github",
				"secret",
			},
			hidden = true,
		},
	},
}

function M.config(opts)
	M.opts = vim.tbl_deep_extend("force", M.opts, opts or {})
end

return M
