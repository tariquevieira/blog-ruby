class Post < ApplicationRecord
  after_create :send_new_post_email
  validates :title, presence: true, length: { minimum:3, maximum: 200}
  
  belongs_to :author
  def send_new_post_email
    PostMailer.with(post: self).new_post.deliver_now
  end
end
