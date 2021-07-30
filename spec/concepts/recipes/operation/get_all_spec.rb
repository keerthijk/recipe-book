require 'rails_helper'

RSpec.describe Recipe::Operation::GetAll do
  let(:result) { described_class.() }

  context 'with correct config' do
    it 'runs successfully' do
      expect(result).to be_success
    end
  end

end
