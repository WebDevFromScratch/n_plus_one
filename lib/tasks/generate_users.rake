task generate_users: :environment do
  address_count = Address.count

  ENV['count'].to_i.times do
    User.create(first_name: "Wesley", last_name: "Snipes", address_id: rand(1..address_count))
  end
end
