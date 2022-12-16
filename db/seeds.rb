# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

users = User.create!([
  {name: 'Tom Hanks', email: 'tom@m.com', password: '666666'},
  {name: 'Mark Hamilton', email: 'mark@m.com', password: '666666'},
  {name: 'Lilly Hertz', email: 'lilly@m.com', password: '666666'},
  {name: 'John Robertson', email: 'john@m.com', password: '666666'},
  {name: 'Klaus Henner', email: 'klaus@m.com', password: '666666'},
])

foods = Food.create!([
  {name: 'Food1', measurement_unit: 'g', price: 10.5, quantity: 10, user_id: 1},
  {name: 'Food2', measurement_unit: 'kg', price: 20.5, quantity: 20, user_id: 1},
  {name: 'Food3', measurement_unit: 'g', price: 30.5, quantity: 30, user_id: 2},
  {name: 'Food4', measurement_unit: 'kg', price: 40.5, quantity: 40, user_id: 3},
  {name: 'Food5', measurement_unit: 'g', price: 50.5, quantity: 50, user_id: 4},
])

recipes = Recipe.create!([
  {name: 'Recipe1', preparation_time: 1.0, cooking_time: 1.5, description: 'Description1', public: true, user_id: 1},
  {name: 'Recipe2', preparation_time: 1.5, cooking_time: 2.0 , description: 'Description2', public: false, user_id: 1},
  {name: 'Recipe3', preparation_time: 0.5, cooking_time: 0.5, description: 'Description3', public: true, user_id: 2},
  {name: 'Recipe4', preparation_time: 1.2, cooking_time: 0.5, description: 'Description4', public: false, user_id: 3},
  {name: 'Recipe5', preparation_time: 1.1, cooking_time: 2.5, description: 'Description5', public: true, user_id: 4},
])

recipefoods = RecipeFood.create!([
  {quantity: 1, food_id: 1, recipe_id: 1},
  {quantity: 2, food_id: 2, recipe_id: 2},
  {quantity: 3, food_id: 3, recipe_id: 3},
  {quantity: 4, food_id: 4, recipe_id: 4},
  {quantity: 5, food_id: 5, recipe_id: 5},
  {quantity: 2, food_id: 3, recipe_id: 1},
])