task generate_addresses: :environment do
  ENV['N'].to_i.times do
    Address.create(street: Faker::Address.street_address, city: Faker::Address.city)
  end
end
