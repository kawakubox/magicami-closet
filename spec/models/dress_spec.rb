# frozen_string_literal: true

RSpec.describe Dress, type: :model do
  let(:dress) { build(:dress) }

  describe 'validation' do
    subject { dress }
    it { expect(dress).to be_valid }
    it { is_expected.to be_invalid_on(:style).with('a' * 4) }
    it { is_expected.to be_invalid_on(:rarity).with('a' * 3) }
    it { is_expected.to be_invalid_on(:attribution).with('a' * 2) }
    it { is_expected.to be_invalid_on(:group).with('a' * 33) }
  end

  it { expect(dress).to be_respond_to(:heroine) }
  it { expect(dress).to be_respond_to(:dress_parameters) }
  it { expect(dress).to be_respond_to(:skills) }
end
