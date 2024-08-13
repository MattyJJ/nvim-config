function SetColor(color, transparent)
	color = color or 'gruvbox'
	transparent = transparent or false
	vim.cmd.colorscheme(color)

	if transparent == true then
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	end
end

SetColor()

