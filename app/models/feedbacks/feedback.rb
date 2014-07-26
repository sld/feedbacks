module Feedbacks
  class Feedback < ActiveRecord::Base
    attr_accessible :email, :text, :topic, :url

    validates :text, :presence => true
    validates :email, :presence => true, :format => {
      :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
    }

    after_create :send_email


    private


    def send_email
      FeedbackMailer.feedback_email(self).deliver
    end
  end
end
