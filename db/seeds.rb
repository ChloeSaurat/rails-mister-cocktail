require "json"
require "open-uri"

Cocktail.delete_all

Dose.delete_all

Ingredient.delete_all

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_serialized = open(url).read
ingredients = JSON.parse(ingredients_serialized)
ingredients["drinks"].each do |ingredient|
  Ingredient.create!(name: ingredient["strIngredient1"])
end



# Cocktail.create!(name: "Moscow Mule")

