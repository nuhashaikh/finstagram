class Profile < ActiveRecord::Base
    belongs_to :user
    has_many :finstagram_post
    validates_presence_of :text, :user, :finstagram_post, :photo_url
end