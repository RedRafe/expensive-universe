-- global container
if not EXPU then EXPU = {} end
if not EXPU.recipes then EXPU.recipes = {} end

-- recipes map
if not EXPR then EXPR = {} end

-- return IngredientPrototype: { name: String, type: String, amount: Number}
-- @ data: { name: String, [amount]: Number, [type]: String }
local function ingredient_prototype(data)
  return {
    name = data.name,
    type = data.type or "item",
    amount = data.amount or 1
  }
end

-- merge ingredients table if different or apply the latest value
-- @ ingredients: Table<IngredientPrototype>
-- @ ingredient: IngredientPrototype
local function merge_ingredients(ingredients, it)
  for _, ingredient in pairs(ingredients) do
    if ingredient.name == it.name then
      ingredient.amount = it.amount -- + ingredient.amount
      return
    end
  end
  table.insert(ingredients, it)
  return
end

-- add ingredient to target recipe
-- @ recipe: RecipePrototype
-- @ ingredient: IngredientPrototype
local function add_ingredient_to_recipe(recipe, ingredient)
  if recipe ~= nil and recipe.ingredients ~= nil then
    for i, existing in pairs(recipe.ingredients) do
      if existing.name == ingredient.name then
        existing.amount = ingredient.amount + existing.amount
        --if existing.amount == 0 then
        --  table.remove(recipe.ingredients, i)
        --end
        return
      end
      if existing[1] == ingredient.name then
        existing[2] = ingredient.amount + existing[2]
        --if existing[2] == 0 then
        --  table.remove(recipe.ingredients, i)
        --end
        return
      end
    end
    table.insert(recipe.ingredients, ingredient)
  end
end

-- remove target ingredient from EXPU recipe
-- @ recipe_name: String
-- @ ingredient_name: String
function EXPU.recipes.remove_ingredient(recipe_name, ingredient_name)
  if not recipe_name and type(recipe_name) ~= "string" then error("EU: recipe_name expected to be String value") return end
  if not ingredient_name and type(ingredient_name) ~= "string" then error("EU: ingredient expected to be String value") return end
  if not EXPR[recipe_name] then return end
  for i, ingredient in pairs(EXPR[recipe_name]) do
    if ingredient.name == ingredient_name then
      table.remove(EXPR[recipe_name], i)
      if #EXPR[recipe_name] == 0 then
        EXPR[recipe_name] = nil
      end
    end
  end
end

-- remove recipe from EXPU
-- @ recipe_name: String
function EXPU.recipes.remove_recipe(recipe_name)
  if not recipe_name and type(recipe_name) ~= "string" then error("EU: recipe_name expected to be String value") return end

  EXPR[recipe_name] = nil
end

-- add ingredient to the global table of ingredients of EXPU
-- @ recipe_name: String
-- @ ingredient: { name: String, [amount]: Number, [type]: String }
function EXPU.recipes.add_ingredient(recipe_name, ingredient)
  if not recipe_name and type(recipe_name) ~= "string" then error("EU: recipe_name expected to be String value") return end
  if not ingredient and type(ingredient) ~= "table" then error("EU: ingredient expected to be a table") return end
  if not ingredient.name and type(ingredient.name) ~= "string" then error("EU: ingredient.name expected to be String value") return end

  local ingredient_p = ingredient_prototype(ingredient)
  
  if not EXPR[recipe_name] then
    EXPR[recipe_name] = { ingredient_p }
  else
    merge_ingredients(EXPR[recipe_name], ingredient_p)
  end
end

-- add ingredient to target recipe
-- @ recipe_name: String
-- @ ingredient: { name: String, amount: Number, [type]: String}
function EXPU.add_ingredient(recipe_name, ingredient)
  if not recipe_name and type(recipe_name) ~= "string" then error("EU: recipe_name expected to be String value") return end
  if not ingredient and type(ingredient) ~= "table" then error("EU: ingredient expected to be Table value") return end
  if not ingredient.name and type(ingredient.name) ~= "string" then error("EU: ingredient.name expected to be String value") return end
  if not ingredient.amount and type(ingredient.amount) ~= "number" then error("EU: ingredient.amount expected to be Number value") return end
  
  local ingredient_p = ingredient_prototype(ingredient)
  local recipe = data.raw.recipe[recipe_name]
  
  if not recipe then log("EU: "..recipe_name.." recipe not found.") return end
  if not data.raw[ingredient_p.type][ingredient_p.name] then log("EU: "..ingredient_p.name.." ingredient not found.") return end

  if recipe and data.raw[ingredient_p.type][ingredient_p.name] then
    add_ingredient_to_recipe(recipe,           ingredient_p)
    add_ingredient_to_recipe(recipe.normal,    ingredient_p)
    add_ingredient_to_recipe(recipe.expensive, ingredient_p)
  end
end

-- if NORMAL and EXPENSIVE recipes are defined, sets the expensive to be equal to the normal one
function EXPU.clear_expensive_recipe(recipe_name)
  if not recipe_name and type(recipe_name) ~= "string" then error("EU: recipe_name expected to be String value, got "..type(recipe_name)) return end
  local recipe = data.raw.recipe[recipe_name]
  if not (recipe and recipe.expensive) then return end
  if not recipe.normal then log("EU: "..recipe_name..", recipe.normal not found") return end
  if recipe.normal and recipe.expensive then recipe.expensive = table.deepcopy(recipe.normal) return end
  --if recipe.normal and recipe.expensive then recipe.expensive = nil return end
end

function EXPU.clear_all_expensive_recipes()
  for ___, recipe in pairs(data.raw.recipe) do
    clear_expensive_recipe(recipe.name)
  end
end