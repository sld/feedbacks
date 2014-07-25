module Feedbacks
  module Generators
    class InitializerGenerator < Rails::Generators::Base
      desc "This generator creates Feedbacks initializer with default :from and :to emails"
      def create_initializer_file
        create_file "config/initializers/feedbacks.rb",
'Feedbacks.setup do |config|
  config.from_email = "example_from@example.example"
  config.to_email   = "example_to@example.example"
end'
      end
    end
  end
end