require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @allrecipes = Recipe.all()
  erb(:index)
end

post('/recipes') do
  name = params.fetch('name')
  @newrecipe = Recipe.create({:name => name})
  redirect('/')
end

get('/recipes/:id') do
  @recipe = Recipe.find(params.fetch("id").to_i())
  @allrecipes = Recipe.all()
  @allingredients = @recipe.ingredients()
  erb(:recipes)
end

post('/ingredients/:id') do
  ingredients = params.fetch('ingredients')
  recipe_id = params.fetch("id").to_i()
  @newingredient = Ingredient.create({:ingredients => ingredients, :recipe_id => recipe_id})
  redirect("/recipes/#{recipe_id}")
end

get('/ingredients') do
  @allingredients = Ingredient.all()
  recipe_id = Recipe.find(params.fetch("id").to_i())
  erb(:recipes)
end

post('/instructions/:id') do
  id = params.fetch('id').to_i()
  found_recipe = Recipe.find(params.fetch('id').to_i())
  instructions = params.fetch('instructions')
  found_recipe.update({:instructions => instructions})
  redirect("/recipes/#{id}")
end

get('/instructions') do
  @allrecipes = Recipe.all()
  recipe_id = Recipe.find(params.fetch("id").to_i())
  erb(:recipes)
end
