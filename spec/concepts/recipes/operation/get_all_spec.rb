require 'rails_helper'

RSpec.describe Recipe::Operation::GetAll, vcr: true do
  let(:result) { described_class.call }

  context 'with correct config' do
    it 'runs successfully' do
      expect(result).to be_success
    end
  end
end
