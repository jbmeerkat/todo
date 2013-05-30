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

  def owner_with_label
    html = h.t('story.owner')
    html += ': '
    html += h.content_tag :strong, owner_email
    html.html_safe
  end

  def performer_with_label
    html = h.t('story.performer')
    html += ': '
    html += h.content_tag :strong, performer_email
    html.html_safe
  end

  def state_with_label
    html = h.t('story.state')
    html += ': '
    html += h.content_tag :span, human_state_name, :class => 'label label-info'
    html.html_safe
  end

  def created_at_with_label
    html = h.t('shared.created_at')
    html += ': '
    html += h.content_tag :strong, l(created_at, :format => :long)
    html.html_safe
  end

end
