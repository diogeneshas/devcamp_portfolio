# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topics|
    Topic.create!(
        title: "Topic #{topics}"
    )
end

10.times do |blog|
    Blog.create!(
        title: "My Blog Post #{blog}",
        body: "Esta transferência foi feita pelo Pix e por isso o valor chegou de forma instantânea para você. Com o Pix você pode enviar e receber dinheiro de forma prática e segura, todos os dias e horários e sem nenhum custo. ",
        topic_id: Topic.last.id
    )
end

puts "10 blog posts created"

5.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
        percent_utilized: 15
    )
end

puts "5 skills created"

8.times do |portfolio_item|
    Portfolio.create!(
        title: "Portofolio title: #{portfolio_item}",
        subtitle: "Ruby on Rails",
        body: "Você recebeu uma transferência pelo Pix de ALEXANDRA DUARTE PEREIRA e o valor já está rendendo na sua conta do Nubank. ",
        main_image: "https://via.placeholder.com/600x400",
        thumb_image: "https://via.placeholder.com/350x200"
    )
end

1.times do |portfolio_item|
    Portfolio.create!(
        title: "Portofolio title: #{portfolio_item}",
        subtitle: "Angular",
        body: "Você recebeu uma transferência pelo Pix de ALEXANDRA DUARTE PEREIRA e o valor já está rendendo na sua conta do Nubank. ",
        main_image: "https://via.placeholder.com/600x400",
        thumb_image: "https://via.placeholder.com/350x200"
    )
end

puts "9 portfolio items created"


3.times do |technology|
    Technology.create!(
        name: "Technology #{technology}",
        portfolio_id: Portfolio.last.id
    )
end

puts "3 technologies created"