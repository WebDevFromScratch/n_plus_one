task generate_addresses: :environment do
  ENV['count'].to_i.times do
    Address.create(street: "King St. 22", city: "London")
  end
end
