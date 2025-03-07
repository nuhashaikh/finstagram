class User < ActiveRecord::Base # defining a class and it is inheriting from class ActiveRecord:: Base library

    has_many :finstagram_post
    has_many :comments
    has_many :likes

    validates :email, :username, uniqueness: true
    validates :email, :avatar_url, :username, :password, presence: true
    
end