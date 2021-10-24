class NewPostNotificationJob < ApplicationJob
  queue_as :notification

  def perform(*args)
    posts = Post.where(publish_at: (Time.now - 1.week)..).select(:title)
    subscribers.each do |subscriber|
      SubscribersMailer.with(subscriber: subscriber, posts: posts)
        .new_posts.deliver_now
    end
  end
end
