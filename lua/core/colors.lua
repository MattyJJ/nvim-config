function SetColor(color, transparent)
	color = color or 'gruvbox'
	transparent = transparent or false
	vim.cmd.colorscheme(color)

	if transparent == true then
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	end
end

Colors = {}
Colors.gruvbox = 'gruvbox'
Colors.rosepine = 'rose-pine'
Colors.vscode = 'vscode'
Colors.habamax = 'habamax'
Colors.catppuccin = 'catppuccin'
Colors.tokyonight = 'tokyonight'
Colors.oxocarbon = 'oxocarbon'
Colors.nordic = 'nordic'

SetColor(Colors.oxocarbon)
