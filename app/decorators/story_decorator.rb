class StoryDecorator < Draper::Decorator
  delegate_all

  def to_s
    name
  end

  def owner_email
    owner.try(:email) || h.t('shared.unknown')
  end

  def performer_email
    performer.try(:email) || h.t('shared.unknown')
  end

  def short_description
    h.truncate(object.description, :length => 80)
  end

  def created_at_in_words
    created_at
  end

end
