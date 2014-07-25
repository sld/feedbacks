Rails.application.routes.draw do

  mount Feedbacks::Engine => "/feedbacks"

  root to: 'application#index'
end
