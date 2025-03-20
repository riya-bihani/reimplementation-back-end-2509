require 'rails_helper'

RSpec.describe Response, type: :model do
  describe '#email' do
    it 'calls the visitor pattern to send an email' do
      visitor = EmailNotificationVisitor.new
      response_map = create(:feedback_response_map)
      participant = create(:participant)
      assignment = create(:assignment)

      allow(visitor).to receive(:visit_feedback_response_map)

      response = create(:response, response_map: response_map)
      response.email

      expect(visitor).to have_received(:visit_feedback_response_map)
    end
  end
end
