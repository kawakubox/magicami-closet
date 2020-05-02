# frozen_string_literal: true

RSpec.describe Series, type: :model do
  let(:series) { build(:series) }

  describe 'validation' do
    subject { series }
    it { expect(series).to be_valid }
    it { is_expected.to be_invalid_on(:name).with('') }
  end
end
