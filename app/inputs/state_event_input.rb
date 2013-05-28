class StateEventInput < SimpleForm::Inputs::CollectionSelectInput
  def collection
    clean_attribute_name = attribute_name.to_s.gsub '_event', ''
    transitions = "#{clean_attribute_name}_transitions"
    object.send(transitions).map { |t| [t.human_event, t.event] }
  end
end