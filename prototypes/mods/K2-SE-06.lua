if not (mods["Krastorio2"] and mods["space-exploration"]) then return end

local add = EXPU.recipes.add_ingredient
local remove = EXPU.recipes.remove_recipe

-- Logistic
remove("pipe")
add("pipe", {name = "iron-plate", amount = 1})

remove("splitter")
add("splitter", {name = "transport-belt", amount = 4})
add("splitter", {name = "motor", amount = 4})

add("pump", {name = "pipe", amount = 2})

remove("tank")
add("tank", {name = "advanced-circuit", amount = 10})

-- Production
remove("burner-mining-drill")
add("burner-mining-drill", {name = "stone-brick", amount = 4})
add("burner-mining-drill", {name = "iron-plate", amount = 4})
add("burner-mining-drill", {name = "motor", amount = 1})

remove("electric-mining-drill")
add("electric-mining-drill", {name = "iron-gear-wheel", amount = 4})
add("electric-mining-drill", {name = "electric-motor", amount = 4})
add("electric-mining-drill", {name = "burner-mining-drill", amount = 1})

remove("kr-electric-mining-drill-mk3")

remove("burner-assembling-machine")
add("burner-assembling-machine", {name = "iron-plate", amount = 8})
add("burner-assembling-machine", {name = "stone-brick", amount = 12})
add("burner-assembling-machine", {name = "automation-core", amount = 2})

remove("assembling-machine-2")
add("assembling-machine-2", {name = "electric-motor", amount = 2})
add("assembling-machine-2", {name = "electronic-circuit", amount = 2})

remove("assembling-machine-3")
add("assembling-machine-3", {name = "concrete", amount = 12})
add("assembling-machine-3", {name = "advanced-circuit", amount = 9})
add("assembling-machine-3", {name = "electric-engine-unit", amount = 6})

remove("lab")
add("lab", {name = "automation-core", amount = 5})
add("lab", {name = "glass", amount = 7})
add("lab", {name = "electric-motor", amount = 1})

-- Intermediates
remove("iron-gear-wheel")
add("iron-gear-wheel", {name = "iron-plate", amount = 3})

remove("steel-plate")
add("steel-plate", {name = "__energy_required__", amount = 16})
add("steel-plate", {name = "coke", amount = 3})
add("steel-plate", {name = "iron-plate", amount = 20})

remove("imersite-crystal")
add("imersite-crystal", {name = "se-kr-imersium-sulfide", type = "fluid", amount = 20})
add("imersite-crystal", {name = "se-kr-fine-imersite-powder", amount = 4})
add("imersite-crystal", {name = "silicon", amount = 6})

add("se-kr-imersium-sulfide", {name = "sulfuric-acid", type = "fluid", amount = 5})

add("se-kr-fine-imersite-powder", {name = "nitric-acid", type = "fluid", amount = 10})

remove("imersium-plate")
add("imersium-plate", {name = "se-kr-fine-imersite-powder", amount = 8})
add("imersium-plate", {name = "rare-metals", amount = 4})

remove("se-steel-ingot-to-plate")
add("se-steel-ingot-to-plate", {name = "se-steel-ingot", amount = 2})

remove("electronic-circuit")
add("electronic-circuit", { name = "wood", amount = 1})
add("electronic-circuit", { name = "copper-cable", amount = 5})

remove("advanced-circuit")
add("advanced-circuit", {name = "electronic-components", amount = 2})
add("advanced-circuit", {name = "copper-cable", amount = 4})

remove("processing-unit")
add("processing-unit", {name = "sulfuric-acid", type = "fluid", amount = 10})
add("processing-unit", {name = "rare-metals", amount = 5})
add("processing-unit", {name = "advanced-circuit", amount = 2})

add("electronic-components-lithium", {name = "glass", amount = 2})
add("electronic-components-lithium", {name = "plastic-bar", amount = 5})
add("electronic-components-lithium", {name = "silicon", amount = 2})
add("electronic-components-lithium", {name = "lithium", amount = 2})

remove("low-density-structure")
add("low-density-structure", {name = "plastic-bar", amount = 20})
add("low-density-structure", {name = "copper-plate", amount = 10})

-- Fluids
remove("sulfuric-acid")
add("sulfuric-acid", {name = "iron-plate", amount = 2})

-- Combat
remove("radar")
add("radar", {name = "automation-core", amount = 8})
add("radar", {name = "stone-brick", amount = 16})
add("radar", {name = "electric-motor", amount = 8})