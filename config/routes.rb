Feedbacks::Engine.routes.draw do
  match "feedback" => "application#feedback"
  post "feedback_send" => "application#feedback_send"
end
