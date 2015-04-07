task generate_posts: :environment do
  user_count = User.count

  ENV['count'].to_i.times do
    Post.create(body: "hey hi hello!", user_id: rand(1..user_count))
  end
end
