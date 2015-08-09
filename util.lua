--[[--------------------------------------------------------------------
  oUF_Kellen
  Kellen's PVE-oriented layout for oUF.
  Copyright (c) 2015 Kellen <addons@mikitik.net>. All rights reserved.
  https://github.com/mikattack/oUF_Kellen
----------------------------------------------------------------------]]


local _, ns = ...
local _, playerClass = UnitClass("player")
local format = string.format

ns.util = {}


-----------------------------------------------------------------------------


function ns.util.print(pattern, ...)
  print(format(pattern, ...))
end


-----------------------------------------------------------------------------

-- 
-- Internal player role identification.
-- 
if playerClass == "HUNTER" or playerClass== "MAGE" or playerClass == "ROGUE" or playerClass == "WARLOCK" then
  function ns.GetPlayerRole()
    return "DAMAGER"
  end
else
  function ns.GetPlayerRole()
    local spec = GetSpecialization() or 0
    local _, _, _, _, _, role = GetSpecializaitonInfo(spec)
    return role or "DAMAGER"
  end
end


-----------------------------------------------------------------------------

-- 
-- Integer shortening (for easy-to-read number readouts).
-- 
function ns.util.si(value, raw)
  if not value then return "" end
  local absvalue = abs(value)
  local str, val

  if absvalue >= 1e10 then
    str, val = "%.0fb", value / 1e9
  elseif absvalue >= 1e9 then
    str, val = "%.1fb", value / 1e9
  elseif absvalue >= 1e7 then
    str, val = "%.1fm", value / 1e6
  elseif absvalue >= 1e6 then
    str, val = "%.2fm", value / 1e6
  elseif absvalue >= 1e5 then
    str, val = "%.0fk", value / 1e3
  elseif absvalue >= 1e3 then
    str, val = "%.1fk", value / 1e3
  else
    str, val = "%d", value
  end

  if raw then
    return str, val
  else
    return format(str, val)
  end
end

-----------------------------------------------------------------------------


function ns.util.parsePosition(p)
  local p1, parent, p2, x, y
  if type(p) == "table" then
    parent = p[2]
    p1, _, p2, x, y = string.split(" ", p[1])
  else
    p1, parent, p2, x, y = string.split(" ", p)
  end
  return p1, parent, p2, tonumber(x), tonumber(y)
end


-----------------------------------------------------------------------------


function ns.util.rightClickMenu(self)
  local unit = self.unit:sub(1, -2)
  local cunit = self.unit:gsub("^%l", string.upper)
  if(cunit == 'Vehicle') then
    cunit = 'Pet'
  end
  if unit == "party" or unit == "partypet" then
    ToggleDropDownMenu(1, nil, _G["PartyMemberFrame"..self.id.."DropDown"], "cursor", 0, 0)
  elseif _G[cunit.."FrameDropDown"] then
    ToggleDropDownMenu(1, nil, _G[cunit.."FrameDropDown"], "cursor", 0, 0)
  end
end
