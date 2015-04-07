task generate_posts: :environment do
  def random_user
    User.offset(rand(User.count)).first
  end

  ENV['N'].to_i.times do
    Post.create(body: Faker::Lorem.paragraph, user_id: random_user.id)
  end
end
