module Feedbacks
  class FeedbackMailer < ActionMailer::Base
    default :from => Feedbacks.from_email,
            :to => Feedbacks.to_email


    def feedback_email(feedback)
      @feedback = feedback
      mail :subject => feedback.topic
    end
  end
end
