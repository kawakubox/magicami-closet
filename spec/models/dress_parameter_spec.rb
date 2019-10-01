# frozen_string_literal: true

RSpec.describe DressParameter, type: :model do
  let(:dress_parameter) { build(:dress_parameter) }

  describe 'validation' do
    subject { dress_parameter }
    it { is_expected.to be_valid }

    it do
      dress_parameter.save!
      expect(dress_parameter.dup).to be_invalid
    end
  end
end
