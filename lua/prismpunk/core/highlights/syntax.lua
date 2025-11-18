local M = {}

local hl = require("prismpunk.core.highlights").hl

function M.apply(c, config)
  if not c or not c.syn then
    vim.notify("[prismpunk] syntax.lua: missing color structure", vim.log.levels.WARN)
    return
  end

  local styles = (config and config.styles)
    or {
      comments = {},
      keywords = {},
      functions = {},
      variables = {},
    }

  local s = c

  local function get_color(key, fallback) return s.syn[key] or fallback or s.ui.fg end

  hl("Comment", vim.tbl_extend("force", { fg = get_color("comment") }, styles.comments or {}))

  hl("Constant", { fg = get_color("constant") })
  hl("String", { fg = get_color("string") })
  hl("Character", { fg = get_color("string") })
  hl("Number", { fg = get_color("number") })
  hl("Boolean", { fg = get_color("constant") })
  hl("Float", { fg = get_color("number") })

  hl("Identifier", { fg = get_color("variable", get_color("identifier")) })
  hl("Function", vim.tbl_extend("force", { fg = get_color("func") }, styles.functions or {}))

  hl("Statement", { fg = get_color("statement", get_color("keyword")) })
  hl("Conditional", { fg = get_color("keyword") })
  hl("Repeat", { fg = get_color("keyword") })
  hl("Label", { fg = get_color("keyword") })
  hl("Operator", { fg = get_color("operator") })
  hl("Keyword", vim.tbl_extend("force", { fg = get_color("keyword") }, styles.keywords or {}))
  hl("Exception", { fg = get_color("keyword") })

  hl("PreProc", { fg = get_color("preproc", get_color("type")) })
  hl("Include", { fg = get_color("func") })
  hl("Define", { fg = get_color("keyword") })
  hl("Macro", { fg = get_color("variable", get_color("identifier")) })
  hl("PreCondit", { fg = get_color("type") })

  hl("Type", { fg = get_color("type") })
  hl("StorageClass", { fg = get_color("type") })
  hl("Structure", { fg = get_color("keyword") })
  hl("Typedef", { fg = get_color("type") })

  hl("Special", { fg = get_color("special") })
  hl("SpecialChar", { fg = get_color("special") })
  hl("Tag", { fg = get_color("type") })
  hl("Delimiter", { fg = get_color("punct", get_color("operator")) })
  hl("SpecialComment", { fg = get_color("special") })
  hl("Debug", { fg = s.diag and s.diag.error or "#ff0000" })

  hl("Underlined", { underline = true })
  hl("Ignore", { fg = s.ui.bg })
  hl("Error", { fg = s.diag and s.diag.error or "#ff0000" })
  hl("Todo", { fg = get_color("special"), bold = true })
end

return M
