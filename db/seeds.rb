# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
    [
        {
            email: 'lucia@lucia',
            full_name: 'lucia', 
            password: "lucia123",
            rol: 1
        },
        {
            email: 'maria@lucia',
            full_name: 'maria', 
            password: "maria123",
            rol: 0
        },
        {
            email: 'nico@lucia',
            full_name: 'nico', 
            password: "lucia123",
            rol: 2
        }
    ]
)
10.times do
    Blog.create(
          name: Faker::Lorem.word,
            description: Faker::Lorem.sentence,
            body: Faker::Lorem.paragraph,
            user_id: 1
    )
end