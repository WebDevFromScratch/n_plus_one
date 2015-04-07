task generate_users: :environment do
  def random_address
    Address.offset(rand(Address.count)).first
  end

  ENV['N'].to_i.times do
    User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address_id: random_address.id)
  end
end
