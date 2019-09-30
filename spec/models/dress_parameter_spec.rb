# frozen_string_literal: true

RSpec.describe DressParameter, type: :model do
  let(:dress_parameter) { build(:dress_parameter) }

  subject { dress_parameter }

  it { is_expected.to be_valid }
end
