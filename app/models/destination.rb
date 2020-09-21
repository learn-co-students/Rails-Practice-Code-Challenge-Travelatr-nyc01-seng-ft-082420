class Destination < ApplicationRecord
  has_many :posts
  has_many :bloggers, through: :posts

  def most_like
    self.posts.max_by{|post| post.likes}
  end

  def average_age
    self.bloggers.uniq.sum{|blogger| blogger.age}/self.bloggers.uniq.count
  end
end
