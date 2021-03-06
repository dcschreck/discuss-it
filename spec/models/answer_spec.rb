require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:question) { Question.create!(title: "New Question Title", body: "New Question Body", resolved: false) }
  let(:answer) { Answer.create!(body: "New Answer Body", question: question) }

  describe "attributes" do
      it "has title, body, and boolean attributes" do
          expect(answer).to have_attributes(body: "New Answer Body")
      end
  end
end
