# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SkillVariable, type: :model do
  let(:skill_variable) { build(:skill_variable) }

  describe 'varidation' do
    subject { skill_variable }

    it { is_expected.to be_valid }
    it { is_expected.to be_invalid_on(:level).with(0) }
    it { is_expected.to be_valid_on(:level).with(1) }
    it { is_expected.to be_valid_on(:level).with(7) }
    it { is_expected.to be_invalid_on(:level).with(8) }
    it { is_expected.to be_invalid_on(:recast).with(-1) }
    it { is_expected.to be_valid_on(:recast).with(0) }
    it { is_expected.to be_valid_on(:recast).with(6) }
    it { is_expected.to be_invalid_on(:recast).with(7) }
    it { is_expected.to be_invalid_on(:damage).with(-1) }
    it { is_expected.to be_valid_on(:damage).with(0) }
    it { is_expected.to be_valid_on(:damage).with(200) }
    it { is_expected.to be_invalid_on(:damage).with(201) }
  end
end
