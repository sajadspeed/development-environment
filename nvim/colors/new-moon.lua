-- Colorscheme generated by https://github.com/arcticlimer/djanho
vim.cmd([[highlight clear]])

local highlight = function(group, bg, fg, attr)
	fg = fg and "guifg=" .. fg or ""
	bg = bg and "guibg=" .. bg or ""
	attr = attr and "gui=" .. attr or ""

	vim.api.nvim_command("highlight " .. group .. " " .. fg .. " " .. bg .. " " .. attr)
end

local link = function(target, group)
	vim.api.nvim_command("highlight! link " .. target .. " " .. group)
end

local Color3 = "#b3b9c5"
local Color1 = "#202020"
local Color4 = "#475847"
local Color6 = "#444444"
local Color0 = "#909090"
local Color2 = "#2d2d2d"
local Color5 = "#614041"
local Color7 = "#606060"

highlight("StatusLine", Color0, Color1, nil)
highlight("WildMenu", Color2, Color3, nil)
highlight("Pmenu", Color2, Color3, nil)
highlight("PmenuSel", Color3, Color2, nil)
highlight("PmenuThumb", Color2, Color3, nil)
highlight("DiffAdd", Color4, nil, nil)
highlight("DiffDelete", Color5, nil, nil)
highlight("Normal", Color2, Color3, nil)
highlight("Visual", Color6, nil, nil)
highlight("CursorLine", Color6, nil, nil)
highlight("ColorColumn", Color6, nil, nil)
highlight("SignColumn", Color2, nil, nil)
highlight("LineNr", nil, Color7, nil)
highlight("TabLine", Color1, nil, nil)
highlight("TabLineSel", nil, Color2, nil)
highlight("TabLineFill", Color1, nil, nil)
highlight("TSPunctDelimiter", nil, Color3, nil)

link("TSConstBuiltin", "TSVariableBuiltin")
link("Macro", "Function")
link("TSComment", "Comment")
link("TSFloat", "Number")
link("TSParameter", "Constant")
link("TSTag", "MyTag")
link("TSField", "Constant")
link("TSTagDelimiter", "Type")
link("TelescopeNormal", "Normal")
link("TSFunction", "Function")
link("TSOperator", "Operator")
link("Folded", "Comment")
link("TSRepeat", "Repeat")
link("TSPunctSpecial", "TSPunctDelimiter")
link("TSConstant", "Constant")
link("TSString", "String")
link("TSNamespace", "TSType")
link("Repeat", "Conditional")
link("TSConditional", "Conditional")
link("TSParameterReference", "TSParameter")
link("TSLabel", "Type")
link("TSFuncMacro", "Macro")
link("Whitespace", "Comment")
link("TSProperty", "TSField")
link("TSType", "Type")
link("NonText", "Comment")
link("TSNumber", "Number")
link("Operator", "Keyword")
link("Conditional", "Operator")
link("CursorLineNr", "Identifier")
link("TSKeyword", "Keyword")
link("TSPunctBracket", "MyTag")
