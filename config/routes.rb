Feedbacks::Engine.routes.draw do
  # Old api support
  match "feedback" => "feedback_sender#new"
  post "feedback_send" => "feedback_sender#create"

  resources :feedback_sender, :only => [:new, :create]
end
