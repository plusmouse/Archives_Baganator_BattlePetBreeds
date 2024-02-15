local LibPetBreedInfo = LibStub("LibPetBreedInfo-1.0")

Baganator.API.RegisterCornerWidget("Battle Pet Species", "baganator_plugin_battle_pet_species", function(text, details)
  if not details.itemLink:find("battlepet", nil, true) then
    return false
  end
  local breedID = LibPetBreedInfo:GetBreedByStats(BattlePetToolTip_UnpackBattlePetLink(details.itemLink))
  text:SetText(LibPetBreedInfo:GetBreedName(breedID))
  return true
end,
function(itemButton)
  local text = itemButton:CreateFontString(nil, "OVERLAY", "NumberFontNormal")
  text.sizeFont = true
  return text
end, {corner = "top_left", priority = 1})

Baganator.API.RegisterCornerWidget("Battle Pet Level", "baganator_plugin_battle_pet_level", function(text, details)
  if not details.itemLink:find("battlepet", nil, true) then
    return false
  end
  local _, level = BattlePetToolTip_UnpackBattlePetLink(details.itemLink)
  text:SetText(level)
  return true
end,
function(itemButton)
  local text = itemButton:CreateFontString(nil, "OVERLAY", "NumberFontNormal")
  text.sizeFont = true
  return text
end, {corner = "bottom_right", priority = 1})
