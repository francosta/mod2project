class User < ApplicationRecord
    has_many :user_posts
    has_many :posts, through: :user_posts
    has_many :comments
    has_one_attached :avatar

    validates :name, :email, :password_digest, presence: true
    validates :email, uniqueness: true
    has_secure_password
end
