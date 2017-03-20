# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product1 = Product.create([{ title: 'Cranberry Citrus', image: File.new('https://images.pexels.com/photos/3672/food-fruits-cereals-breakfast.jpg?w=940&h=650&auto=compress&cs=tinysrgb'), flavor: 'Cranberry Citrus', size: '12 oz', price: 5, description: 'A super yummy combination of Cranberry and Citrus.'}])

product2 = Product.create([{ title: 'Apple Cinnamon Raisin', image: File.new('https://images.pexels.com/photos/3672/food-fruits-cereals-breakfast.jpg?w=940&h=650&auto=compress&cs=tinysrgb'), flavor: 'Cranberry Citrus', size: '12 oz', price: 5, description: 'A super yummy combination of Cranberry and Citrus.'}])

product3 = Product.create([{ title: 'Blueberry Coconut', image: File.new('https://images.pexels.com/photos/3672/food-fruits-cereals-breakfast.jpg?w=940&h=650&auto=compress&cs=tinysrgb'), flavor: 'Cranberry Citrus', size: '12 oz', price: 5, description: 'A super yummy combination of Cranberry and Citrus.'}])
