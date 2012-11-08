module Feedbacks
  class ApplicationController < ::ApplicationController


    def feedback
      @feedback = Feedback.new :topic => params[:topic]
      respond_to do |format|
        format.js
      end
    end


    def feedback_send
      @feedback = Feedback.create params[:feedback]
      respond_to do |format|
        format.js
      end
    end


  end
end
