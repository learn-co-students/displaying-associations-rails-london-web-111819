# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.fir
8.times do
    Category.create(:name => Faker::Book.genre)
end

8.times do 
    Author.create(:name => Faker::Name.name,
                 :genre => Faker::Book.genre,
                 :bio => Faker::Hipster.sentence)
end

8.times do 
    Post.create(:title => Faker::Book.title,
                :description => Faker::Hipster.sentence,
                :author_id => Author.all.sample.id,
                :category_id => Category.all.sample.id)
end