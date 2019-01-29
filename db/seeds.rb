exit if !Rails.env.development?

puts "Deleting the Data"
Post.delete_all
User.delete_all

puts "Creating User"
user = FactoryBot.create(:user, email: "test@example.com")

puts "Creating posts"
20.times do
	FactoryBot.create(:post, user: user)
end