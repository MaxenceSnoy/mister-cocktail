# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

list = ["lemon", "mint leaves", "coke", "orange juice", "apple juice", "peer juice"]
ingredient_list = []
i = 0

list.each do |element|
 p ingredient_list << Ingredient.create(name: element)
end

3.times do

  cocktail = Cocktail.create(name: Faker::Company.name)
  p ingredient = ingredient_list[i]
  cocktail.doses.create(ingredient_id: ingredient.id , description: "6cl")
  i += 1
  2.times do
    ingredient = ingredient_list[i]
    cocktail.doses.create(ingredient_id: ingredient.id , description: "3cl")
    i += 1
  end

end
