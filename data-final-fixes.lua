local function is_actually_expensive(recipe)
  for ___, n_ingredient in pairs(recipe.normal.ingredients) do
    for ___, e_ingredient in pairs(recipe.expensive.ingredients) do
      if n_ingredient.name and n_ingredient.name == e_ingredient.name and n_ingredient.amount < e_ingredient.amount then return true end
      if n_ingredient[1] and n_ingredient[1] == e_ingredient[1] and n_ingredient[2] < e_ingredient[2] then return true end
    end
  end
  if recipe.normal.results and recipe.expensive.results then
    for ___, n_result in pairs(recipe.normal.results) do
      for ___, e_result in pairs(recipe.expensive.results) do
        if not n_result.amount_max and n_result.name  and n_result.name == e_result.name and n_result.amount > e_result.amount then return true end
        if n_result[1] and n_result[1] == e_result[1] and n_result[2] > e_result[2] then return true end
      end
    end
  end
  return false
end

local function print_expensive_recipes()
  -- print recipes that actually have expensive mode
  for ___, recipe in pairs(data.raw.recipe) do
    if recipe.normal and recipe.expensive then
      if is_actually_expensive(recipe) then log(serpent.block(recipe)) end
    end
  end
end

--print_expensive_recipes()

for recipe, ingredients in pairs(EXPR) do
  EXPU.clear_expensive_recipe(recipe)
  for ___, ingredient in pairs(EXPR[recipe]) do
    EXPU.add_ingredient(recipe, ingredient)
  end
end
