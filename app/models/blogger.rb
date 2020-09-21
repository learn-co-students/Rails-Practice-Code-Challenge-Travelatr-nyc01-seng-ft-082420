class Blogger < ApplicationRecord
  has_many :posts
  has_many :destinations, through: :posts

  validates :name, uniqueness:true
  validates :age, numericality:{greater_than:0}
  validates :bio, length:{minimum:30}

  def total_like
    self.posts.sum{|post| post.likes}
  end

  def most_likes
    self.posts.max_by{|post| post.likes}
  end

end
