task generate_users: :environment do
  address_count = Address.count

  ENV['N'].to_i.times do
    User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address_id: rand(1..address_count))
  end
end
