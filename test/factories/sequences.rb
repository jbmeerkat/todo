FactoryGirl.define do
  sequence :email do |n|
    "user_#{n}@example.com"
  end

  sequence :body do |n|
    "Aenean nec porttitor nibh. Duis scelerisque libero sed lacus consectetur lacinia. Nulla sodales mi a
    sem vehicula vitae mattis arcu semper. Nulla et arcu eu augue imperdiet egestas vel a sem. Phasellus
    mollis condimentum leo, quis fermentum purus faucibus nec. Praesent eleifend vestibulum suscipit.
    Fusce ac luctus purus. Pellentesque sodales rutrum interdum. Duis mauris ligula, vestibulum sit amet
    condimentum sed, rhoncus at nisl. Vivamus rutrum lectus at sem gravida condimentum.".split.shuffle.join(' ')
  end
end