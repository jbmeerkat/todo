class Story::CommentDecorator < Draper::Decorator
  delegate_all

  def to_s
    body
  end

  def author_email
    author.email
  end

  def created_at_in_words
    h.time_ago_in_words(created_at) + ' ago'
  end

end
