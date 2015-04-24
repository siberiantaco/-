40.times do 
    title = Faker::Lorem.sentence(2)
    content = Faker::Lorem.sentence(25)
    Advert.create!(email: "example@mail.com", title: title, content: content)
end

adverts = Advert.order(:created_at).reverse_order.take(6)
15.times do 
    content = Faker::Lorem.sentence(5)
    adverts.each {|advert| advert.responses.create!(email: "example@mail.com", content: content)}
end