FactoryGirl.define do
  factory :feedback, class: Feedbacks::Feedback do |f|
    f.topic 'Topic'
    f.email 'email@email.email'
    f.text '123asdasdas'
    f.url 'http://test.test'
  end
end