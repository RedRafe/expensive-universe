if not mods["space-exploration"] then return end

local add = EXPU.recipes.add_ingredient

local se_expensive_recipes = {
  -- Logistics
  "se-space-pipe",
  -- Production
  "area-mining-drill",
  -- Intermediate Products
  "se-holmium-cable",
  "electronic-circuit",
  "electronic-circuit-stone",
  "processing-unit",
  "processing-unit-holmium",
  "sulfur",
  "explosives",
  "glass",
  -- Combat
  "steel-wall",
}

-- -- Logistic
add("pipe", {name = "iron-plate", amount = 1})

add("se-space-pipe", {name = "copper-cable", amount = 2})
add("se-space-pipe", {name = "plastic-bar", amount = 1})
add("se-space-pipe", {name = "glass", amount = 1})

add("pump", {name = "electric-motor", amount = 2})
add("pump", {name = "steel-plate", amount = 1})

add("substation", {name = "copper-cable", amount = 20})
add("substation", {name = "concrete", amount = 5})
add("substation", {name = "advanced-circuit", amount = 5})

add("roboport", {name = "electric-motor", amount = 50})
add("roboport", {name = "advanced-circuit", amount = 50})
add("roboport", {name = "concrete", amount = 50})

add("tank", {name = "engine-unit", amount = 18})
add("tank", {name = "iron-gear-wheel", amount = 15})
add("tank", {name = "advanced-circuit", amount = 10})

add("concrete", {name = "stone-brick", amount = 1})
add("concrete", {name = "sand", amount = 2})
add("concrete", {name = "iron-stick", amount = 1})

add("splitter", {name = "iron-plate", amount = 8})
add("splitter", {name = "transport-belt", amount = 4})
add("splitter", {name = "motor", amount = 4})

add("small-lamp", {name = "copper-cable", amount = 4})
add("small-lamp", {name = "iron-plate", amount = 1})

add("burner-inserter", {name = "iron-stick", amount = 2})
add("burner-inserter", {name = "motor", amount = 1})

add("long-handed-inserter", {name = "iron-plate", amount = 2})
add("long-handed-inserter", {name = "iron-stick", amount = 2})

add("inserter", {name = "electric-motor", amount = 2})

add("transport-belt", {name = "iron-plate", amount = 3})

-- -- Production
add("burner-mining-drill", {name = "stone-brick", amount = 4})
add("burner-mining-drill", {name = "iron-plate", amount = 4})
add("burner-mining-drill", {name = "motor", amount = 1})

add("electric-mining-drill", {name = "iron-gear-wheel", amount = 4})
add("electric-mining-drill", {name = "electric-motor", amount = 4})
add("electric-mining-drill", {name = "burner-mining-drill", amount = 1})

add("area-mining-drill", {name = "electric-engine-unit", amount = 8})
add("area-mining-drill", {name = "processing-unit", amount =4 })

add("burner-assembling-machine", {name = "iron-gear-wheel", amount = 4})
add("burner-assembling-machine", {name = "iron-plate", amount = 8})
add("burner-assembling-machine", {name = "stone-brick", amount = 12})
add("burner-assembling-machine", {name = "motor", amount = 3})

add("assembling-machine-1", {name = "electric-motor", amount = 3})
add("assembling-machine-1", {name = "iron-gear-wheel", amount = 4})

add("assembling-machine-2", {name = "electric-motor", amount = 2})

add("assembling-machine-3", {name = "concrete", amount = 8})
add("assembling-machine-3", {name = "advanced-circuit", amount = 8})
add("assembling-machine-3", {name = "electric-engine-unit", amount = 4})

add("burner-turbine", {name = "electric-motor", amount = 4})
add("burner-turbine", {name = "iron-gear-wheel", amount = 5})

add("burner-lab", {name = "motor", amount = 10})
add("burner-lab", {name = "copper-plate", amount = 10})
add("burner-lab", {name = "stone-brick", amount = 5})

add("lab", {name = "electronic-circuit", amount = 7})
add("lab", {name = "glass", amount = 7})
add("lab", {name = "electric-motor", amount = 1})

add("chemical-plant", {name = "electric-motor", amount = 5})
add("chemical-plant", {name = "glass", amount = 5})
add("chemical-plant", {name = "stone-brick", amount = 5})

add("oil-refinery", {name = "electric-motor", amount = 5})
add("oil-refinery", {name = "glass", amount = 5})
add("oil-refinery", {name = "stone-brick", amount = 5})

add("pumpjack", {name = "electric-motor", amount = 5})
add("pumpjack", {name = "pipe", amount = 40})
add("pumpjack", {name = "iron-gear-wheel", amount = 10})

add("beacon", {name = "advanced-circuit", amount = 60})
add("beacon", {name = "concrete", amount = 30})
add("beacon", {name = "steel-plate", amount = 10})
add("beacon", {name = "electric-motor", amount = 30})

add("stone-furnace", {name = "stone", amount = 5})

add("steel-furnace", {name = "stone-brick", amount = 6})

add("electric-furnace", {name = "advanced-circuit", amount = 5})

add("industrial-furnace", {name = "concrete", amount = 8})
add("industrial-furnace", {name = "processing-unit", amount = 4})

add("repair-pack", {name = "iron-plate", amount = 1})
add("repair-pack", {name = "copper-plate", amount = 1})
add("repair-pack", {name = "stone", amount = 1})

add("offshore-pump", {name = "electric-motor", amount = 6})

add("steam-engine", {name = "iron-plate", amount = 10})
add("steam-engine", {name = "iron-gear-wheel", amount = 15})
add("steam-engine", {name = "electric-motor", amount = 3})

add("boiler", {name = "pipe", amount = 16})

-- -- Intermediates products
add("electronic-circuit", {name = "wood", amount = 1})
add("electronic-circuit", {name = "copper-cable", amount = 5})

add("electronic-circuit-stone", {name = "stone-tablet", amount = 1})
add("electronic-circuit-stone", {name = "copper-cable", amount = 5})

add("electric-motor", {name = "iron-plate", amount = 1})
add("electric-motor", {name = "copper-cable", amount = 4})

add("motor", {name = "iron-plate", amount = 2})

add("battery", {name = "sulfuric-acid", type = "fluid", amount = 20})

add("explosives", {name = "coal", amount = 1})
add("explosives", {name = "sulfur", amount = 1})

add("flying-robot-frame", {name = "steel-plate", amount = 4})
add("flying-robot-frame", {name = "electric-engine-unit", amount = 12})
add("flying-robot-frame", {name = "battery", amount = 12})
add("flying-robot-frame", {name = "electric-engine-unit", amount = 12})

add("electric-engine-unit", {name = "lubricant", type = "fluid", amount = 60})
add("electric-engine-unit", {name = "electric-motor", amount = 2})

add("processing-unit", {name = "sulfuric-acid", type = "fluid", amount = 5})

add("advanced-circuit", {name = "plastic-bar", amount = 2})
add("advanced-circuit", {name = "copper-cable", amount = 4})

add("steel-plate", {name = "__energy_required__", amount = 16})
add("steel-plate", {name = "iron-plate", amount = 5})

add("engine-unit", {name = "motor", amount = 2})

add("iron-gear-wheel", {name = "iron-plate", amount = 2})

add("uranium-processing", {name = "__energy_required__", amount = 9})
add("uranium-processing", {name = "uranium-ore", amount = 8})

add("low-density-structure", {name = "plastic-bar", amount = 30})
add("low-density-structure", {name = "copper-plate", amount = 10})
add("low-density-structure", {name = "glass", amount = 10})

add("se-low-density-structure-beryllium", {name = "glass", amount = 2})
add("se-low-density-structure-beryllium", {name = "plastic-bar", amount = 8})
add("se-low-density-structure-beryllium", {name = "se-aeroframe-scaffold", amount = 1})

add("se-material-testing-pack", {name = "plastic-bar", amount = 1})
add("se-material-testing-pack", {name = "copper-plate", amount = 1})
add("se-material-testing-pack", {name = "iron-plate", amount = 1})

add("se-holmium-cable", {name = "plastic-bar", amount = 1})

add("se-beryllium-ingot-to-plate", {name = "se-beryllium-ingot", amount = 1})

add("se-holmium-ingot-to-plate", {name = "se-holmium-ingot", amount = 1})

add("se-iridium-ingot-to-plate", {name = "se-iridium-ingot", amount = 1})

add("se-naquium-ingot-to-plate", {name = "se-naquium-ingot", amount = 1})

add("se-steel-ingot-to-plate", {name = "se-steel-ingot", amount = 1})

add("se-heat-shielding", {name = "stone-tablet", amount = 10})
add("se-heat-shielding", {name = "sulfur", amount = 4})

add("se-heat-shielding-iridium", {name = "sulfur", amount = 1})
add("se-heat-shielding-iridium", {name = "stone.tablet", amount = 2})

add("se-cryonite-rod", {name = "se-cryonite-powder", amount = 2})
add("se-cryonite-rod", {name = "se-cryonite-crystal", amount = 2})
add("se-cryonite-rod", {name = "heavy-oil", type = "fluid", amount = 3})

add("se-vulcanite-block", {name = "se-enriched-vulcanite", amount = 2})
add("se-vulcanite-block", {name = "petroleum-gas", type = "fluid", amount = 9})

add("se-vitamelange-extract", {name = "se-vitamelange-spice", amount = 20})

add("se-plasma-stream", {name = "stone", amount = 4})

add("se-chemical-gel", {name = "petroleum-gas", type = "fluid", amount = 50})
add("se-chemical-gel", {name = "se-space-water", type = "fluid", amount = 10})

add("se-nutrient-vat", {name = "glass", amount = 1})
add("se-nutrient-vat", {name = "iron-plate", amount = 1})
add("se-nutrient-vat", {name = "se-nutrient-gel", amount = 30})

add("se-space-coolant", {name = "sulfur", amount = 1})
add("se-space-coolant", {name = "iron-plate", amount = 1})
add("se-space-coolant", {name = "copper-plate", amount = 4})

add("se-space-coolant-cryonite", {name = "sulfur", amount = 1})
add("se-space-coolant-cryonite", {name = "iron-plate", amount = 1})
add("se-space-coolant-cryonite", {name = "copper-plate", amount = 4})

add("se-canister", {name = "plastic-bar", amount = 5})
add("se-canister", {name = "glass", amount = 5})
add("se-canister", {name = "heat-shielding", amount = 1})
add("se-canister", {name = "copper-plate", amount = 10})

add("se-observation-frame-blank", {name = "coal", amount = 1})
add("se-observation-frame-blank", {name = "glass", amount = 1})

add("se-observation-frame-blank-beryllium", {name = "coal", amount = 1})
add("se-observation-frame-blank-beryllium", {name = "glass", amount = 1})

-- -- Combat
add("laser-turret", {name = "electric-motor", amount = 5})
add("laser-turret", {name = "battery", amount = 28})
add("laser-turret", {name = "electronic-circuit", amount = 10})

add("gun-turret", {name = "iron-plate", amount = 20})
add("gun-turret", {name = "motor", amount = 5})
add("gun-turret", {name = "motor", amount = 10})

add("cannon-shell", {name = "plastic-bar", amount = 2})

add("explosive-cannon-shell", {name = "plastic-bar", amount = 2})

add("radar", {name = "electronic-circuit", amount = 12})
add("radar", {name = "stone-brick", amount = 16})
add("radar", {name = "electric-motor", amount = 8})

add("submachine-gun", {name = "copper-plate", amount = 15})
add("submachine-gun", {name = "iron-plate", amount = 20})
add("submachine-gun", {name = "iron-gear-wheel", amount = 5})
