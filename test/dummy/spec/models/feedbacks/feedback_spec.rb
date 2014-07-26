require 'rails_helper'

describe Feedbacks::Feedback do
  describe '#create' do
    let(:feedback){build(:feedback)}

    it 'should call #send_email after create' do
      expect(feedback).to receive(:send_email)
      feedback.save!
    end

    it 'should validate #email presence' do
      expect(build(:feedback, email: nil)).to_not be_valid
    end

    it 'should validate #text presence' do
      expect(build(:feedback, text: nil)).to_not be_valid
    end
  end
end