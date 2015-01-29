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

get("/recipes/:id") do
  @newrecipe = Recipe.find(params.fetch("id").to_i())
  @allrecipes = Recipe.all()
  erb(:recipes)
end
