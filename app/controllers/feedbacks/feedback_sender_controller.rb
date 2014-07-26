module Feedbacks
  class FeedbackSenderController < ApplicationController
    def new
      @feedback = Feedback.new(:topic => params[:topic])
      respond_to do |format|
        format.js
      end
    end

    def create
      @feedback = Feedback.create(params[:feedback])
      respond_to do |format|
        format.js
      end
    end
  end
end
