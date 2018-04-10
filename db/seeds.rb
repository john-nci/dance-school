# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Adding classes data to to classtype
Classtype.create([
    {
    :classname => "Salsa", 
    :classid => 101, 
    :cost => 50.00, 
    :category => "Beginner", 
    :classtime => DateTime.new(2018,5,25,18)
    },
    {
    :classname => "Ballet", 
    :classid => 201, 
    :cost => 60.00, 
    :category => "Intermediate", 
    :classtime => DateTime.new(2018,5,26,18)
    },
    {
    :classname => "Swing", 
    :classid => 301, 
    :cost => 70.00, 
    :category => "Expert", 
    :classtime => DateTime.new(2018,5,27,18)
    }
    ])
