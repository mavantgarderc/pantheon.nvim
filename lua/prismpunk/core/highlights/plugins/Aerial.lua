local M = {}

local hl = require("prismpunk.core.highlights").hl

---@diagnostic disable-next-line: unused-local
function M.apply(c, _config)
  local s = c

  hl("AerialNormal", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("AerialNormalNC", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("AerialLine", { bg = s.ui.bg_highlight })
  hl("AerialGuide", { fg = s.ui.line_nr_dim })

  hl("AerialArrayIcon", { fg = s.syn.type })
  hl("AerialBooleanIcon", { fg = s.syn.boolean })
  hl("AerialClassIcon", { fg = s.syn.type })
  hl("AerialConstantIcon", { fg = s.syn.constant })
  hl("AerialConstructorIcon", { fg = s.syn.func })
  hl("AerialEnumIcon", { fg = s.syn.type })
  hl("AerialEnumMemberIcon", { fg = s.syn.constant })
  hl("AerialEventIcon", { fg = s.syn.type })
  hl("AerialFieldIcon", { fg = s.syn.variable })
  hl("AerialFileIcon", { fg = s.syn.type })
  hl("AerialFunctionIcon", { fg = s.syn.func })
  hl("AerialInterfaceIcon", { fg = s.syn.type })
  hl("AerialKeyIcon", { fg = s.syn.variable })
  hl("AerialMethodIcon", { fg = s.syn.func })
  hl("AerialModuleIcon", { fg = s.syn.keyword })
  hl("AerialNamespaceIcon", { fg = s.syn.type })
  hl("AerialNullIcon", { fg = s.syn.constant })
  hl("AerialNumberIcon", { fg = s.syn.number })
  hl("AerialObjectIcon", { fg = s.syn.type })
  hl("AerialOperatorIcon", { fg = s.syn.operator })
  hl("AerialPackageIcon", { fg = s.syn.keyword })
  hl("AerialPropertyIcon", { fg = s.syn.variable })
  hl("AerialStringIcon", { fg = s.syn.string })
  hl("AerialStructIcon", { fg = s.syn.type })
  hl("AerialTypeParameterIcon", { fg = s.syn.type })
  hl("AerialVariableIcon", { fg = s.syn.variable })
end

return M
