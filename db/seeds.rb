# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
ContactInfo.destroy_all
Product.destroy_all
Category.destroy_all

contact_info = ContactInfo.create(name: "Comrade", number: 070123456, address: "Sveavägen 16, Stockholm", content: "Everyone is equal")


starter = Category.create(title: "Starters")
Product.create(name: "Garlic Bread", description: "garlic, bread, butter", price: 30, category: starter )


main = Category.create(title: "Main Courses")
Product.create(name: "Margherita", description: "cheese, tomato sauce, basil", price: 70, category: main)
Product.create(name: "Vesuvio", description: "cheese, tomato sauce, ham", price: 70, category: main)
Product.create(name: "Calzone", description: "cheese, tomato sauce, ham", price: 80, category: main)


dessert = Category.create(title: "Desserts")
Product.create(name: "Ice-cream", description: "vanilla", price: 40, category: dessert)
Product.create(name: "Ice-cream", description: "strawberry", price: 40, category: dessert)