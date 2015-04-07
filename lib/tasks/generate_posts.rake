task generate_posts: :environment do
  user_count = User.count

  ENV['N'].to_i.times do
    Post.create(body: Faker::Lorem.paragraphs, user_id: rand(1..user_count))
  end
end
