require "feedbacks/engine"


module Feedbacks


  mattr_accessor :from_email, :to_email
  @@from_email = "thisis@example.email"
  @@to_email = "thisis@example.email"


  def self.setup
    yield self
  end


end
