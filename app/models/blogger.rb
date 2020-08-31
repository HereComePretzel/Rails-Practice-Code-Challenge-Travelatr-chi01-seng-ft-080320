class Blogger < ApplicationRecord
has_many :posts
has_many :destinations, through: :posts

validates :name, uniqueness: true
validates :age, numericality: {greater_than: 0}
validates :bio, numericality: {greater_than: 30}

    def total_likes
        likes = 0
        self.posts.map {|post| likes += post.likes}
        likes
    end 
end
