class Post < ApplicationRecord
	belongs_to :user

	validates :title, presence: true, uniqueness: { scope: :user_id }
	validates :body, presence: true
	validates :user, presence: true

end