class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts

    def most_recent_posts
        self.posts.last(5)
    end

    def best_post
        self.posts.max_by { |p| p.likes }
    end    

    def average_age_bloggers
        self.bloggers.map{|b| b.age}.sum / self.bloggers.length
    endd
end
