require("bundler/setup")
Bundler.require(:default)
require("pry")

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @categories = Category.all()
  erb(:index)
end

post('/category') do
  category_name = params['category_name']
  Category.create({:name => category_name})
  redirect("/")
end

get('/categories/:id') do
  @category = Category.find(params["id"].to_i())
  @recipes = Recipe.all()
  erb(:categories)
end

post('/recipe') do
  recipe_name = params['recipe_name']
  category_id = params['category_id']
  Recipe.create({:name => recipe_name, :category_ids => [category_id]})
  redirect "/categories/#{category_id}"
end


get('/categories/:id/recipes/:id') do
  @recipe = Recipe.find(params["id"].to_i())
  @instructions = Instruction.all()
  @recipes = Recipe.all()
  @ingredients = Ingredient.all()
binding.pry
  erb(:recipes)
end

post('/ingredients') do
  name = params['name']
  recipe_id = params['recipe_id']
  Ingredient.create({:name => name})
  recipe.ingredients << ingredient
  redirect back
end

post('/instructions') do
  description = params['description']
  recipe_id = params['recipe_id']
  Instruction.create({:description => description, :recipe_id => recipe_id})
  redirect back
end
