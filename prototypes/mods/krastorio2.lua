if not mods["Krastorio2"] then return end

local add = EXPU.recipes.add_ingredient

local k2_expensive_recipes = {
  -- Logistic
  "steam-engine", "pipe", "iron-pipe", "kr-steel-pipe", "tank",
  -- Production
  "kr-wind-turbine", "burner-mining-drill", "electric-mining-drill", "kr-electric-mining-drill-mk2", "kr-electric-mining-drill-mk3", "assembling-machine-2",
  -- Intermediates products
  "steel-plate", "lithium-sulfur-battery", "imersite-powder", "imersium-plate", "iron-beam", "kr-s-c-iron-beam", "kr-s-c-iron-beam-enriched",
  "iron-gear-wheel", "kr-s-c-iron-gear-wheel", "electronic-components", "kr-s-c-electronic-components", "imersite-crystal",
  "electronic-circuit", "advanced-circuit", "processing-unit", "low-density-structure", "battery", "explosives",
  -- Combat
  "cannon-shell", "explosive-cannon-shell"
}

-- -- Logistics
add("pipe", {name = "iron-plate", amount = 1})
add("iron-pipe", {name = "iron-plate", amount = 1})

add("kr-steel-pipe", {name = "steel-plate", amount = 1})

add("tank", {name = "advanced-circuit", amount = 10})

--  -- Production
add("kr-wind-turbine", {name = "iron-plate", amount = 4})
add("kr-wind-turbine", {name = "copper-plate", amount = 4})

add("steam-engine", {name = "iron-plate", 40})

add("stone-furnace", {name = "stone", amount = 5})

add("burner-mining-drill", {name = "stone-furnace", amount = 1})
add("burner-mining-drill", {name = "iron-plate", amount = 3})

add("electric-mining-drill", {name = "iron-gear-wheel", amount = 5})

add("kr-electric-mining-drill-mk2", {name = "rare-metals", amount = 4})

add("kr-electric-mining-drill-mk3", {name = "imersite-crystal", amount = 4})

add("assembling-machine-2", {name = "steel-plate", amount = 3})
add("assembling-machine-2", {name = "electronic-circuit", amount = 2})
add("assembling-machine-2", {name = "iron-gear-wheel", amount = 5})

--  -- Intermediate Products
add("steel-plate", {name = "coke", amount = 4})
add("steel-plate", {name = "iron-plate", amount = 10})

add("lithium-sulfur-battery", {name = "sulfuric-acid", type = "fluid", amount = 10,})
add("lithium-sulfur-battery", {name = "lithium", amount = 1})
add("lithium-sulfur-battery", {name = "copper-plate", amount = 1})

add("lithium-chloride", {name = "mineral-water", type = "fluid", amount = 50})

add("fertilizer", {name = "biomass", amount = 8})

add("imersite-powder", {name = "raw-imersite", amount = 3})

add("imersium-plate", {name = "imersium-powder", amount = 7})
add("imersium-plate", {name = "rare-metals", amount = 4})

add("iron-beam", {name = "iron-plate", amount = 2})
add("kr-s-c-iron-beam", {name = "iron-ore", amount = 2})
add("kr-s-c-iron-beam-enriched", {name = "enriched-iron", amount = 2})

add("iron-gear-wheel", {name = "iron-plate", amount = 4})
add("kr-s-c-iron-gear-wheel", {name = "iron-ore", amount = 2})

add("inserter-parts", {name = "iron-stick", amount = 4})

add("automation-core", {name = "iron-stick", amount = 2})
add("automation-core", {name = "copper-plate", amount = 4})

add("electronic-components", {name = "silicon", amount = 2})
add("electronic-components", {name = "plastic-bar", amount = 2})
add("electronic-components", {name = "glass", amount = 2})
add("kr-s-c-electronic-components", {name = "plastic-bar", amount = 5})
add("kr-s-c-electronic-components", {name = "stone", amount = 8})

add("electronic-circuit", {name = "iron-plate", amount = 1})
add("electronic-circuit", {name = "wood", amount = 1})
add("electronic-circuit", {name = "copper-cable", amount = 4}) --10

add("advanced-circuit", {name = "electronic-components", amount = 2})
add("advanced-circuit", {name = "copper-cable", amount = 4})

add("processing-unit", {name = "sulfuric-acid", type = "fluid", amount = 10})
add("processing-unit", {name = "rare-metals", amount = 5})
add("processing-unit", {name = "advanced-circuit", amount = 2})

add("imersite-crystal", {name = "sulfuric-acid", type = "fluid", amount = 6})
add("imersite-crystal", {name = "nitric-acid", type = "fluid", amount = 6})

add("low-density-structure", {name = "plastic-bar", amount = 25})

add("battery", {name = "sulfuric-acid", type = "fluid", amount = 20})

add("explosives", {name = "sulfur", amount = 1})
add("explosives", {name = "coal", amount = 1})

-- -- Fluids
add("sulfuric-acid", {name = "copper-plate", amount = 1})

add("nitric-acid", {name = "mineral-water", type = "fluid", amount = 25})

-- -- Combat
add("cannon-shell", {name = "steel-plate", amount = 2})
add("cannon-shell", {name = "plastic-bar", amount = 2})

add("explosive-cannon-shell", {name = "steel-plate", amount = 2})
add("explosive-cannon-shell", {name = "plastic-bar", amount = 2})