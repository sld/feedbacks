module Feedbacks
  class FeedbackMailer < ActionMailer::Base
    default from: "feedback@rbcpp.ru",
            :to => "sld7703@gmail.com"


    def feedback_email(feedback)
      @feedback = feedback
      mail :subject => feedback.topic
    end
  end
end
