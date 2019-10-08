# frozen_string_literal: true

RSpec.describe Types::DressType do
  describe 'dress' do
    let!(:dress) { create(:dress) }
    let(:query) do
      <<-GRAPHQL
        query($id: Int!) {
          dress(id: $id) {
            heroine {
              firstName
              familyName
            }
            group
            rarity
            attribution
            style
            dressParameters {
              level
              hitPoint
              attack
              defense
              agility
              dexterity
              resist
            }
            skills {
              number
              name
              maxLevel
              description
            }
          }
        }
      GRAPHQL
    end

    subject do
      result = MagicamiClosetSchema.execute(query, variables: { id: dress.id })
      result['data']['dress']
    end

    its(['heroine']) { is_expected.to be_present }
    its(['group']) { is_expected.to be_present }
    its(['rarity']) { is_expected.to be_present }
    its(['attribution']) { is_expected.to be_present }
    its(['style']) { is_expected.to be_present }

    describe 'dressParameter' do
      subject do
        result = MagicamiClosetSchema.execute(query, variables: { id: dress.id })
        result['data']['dress']['dressParameters'].first
      end

      its(['level']) { is_expected.to be_present }
      its(['attack']) { is_expected.to be_present }
      its(['defense']) { is_expected.to be_present }
      its(['agility']) { is_expected.to be_present }
      its(['dexterity']) { is_expected.to be_present }
      its(['resist']) { is_expected.to be_present }
    end

    describe 'skill' do
      subject do
        result = MagicamiClosetSchema.execute(query, variables: { id: dress.id })
        result['data']['dress']['skills'].first
      end

      its(['number']) { is_expected.to be_present }
      its(['name']) { is_expected.to be_present }
      its(['maxLevel']) { is_expected.to be_present }
      its(['description']) { is_expected.to be_present }
    end
  end

  describe 'dresses' do
    let!(:dresses) { create_list(:dress, 3) }
    let(:query) do
      <<-GRAPHQL
        query {
          dresses {
            heroine {
              firstName
              familyName
            }
            group
            rarity
            attribution
            style
          }
        }
      GRAPHQL
    end

    subject do
      result = MagicamiClosetSchema.execute(query)
      result['data']['dresses']
    end

    its(:size) { is_expected.to eq 3 }
  end
end
