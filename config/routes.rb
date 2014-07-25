Feedbacks::Engine.routes.draw do
  match "feedback" => "feedback_sender#new"
  post "feedback_send" => "feedback_sender#create"
end
