# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :heroine, Types::HeroineType, null: false do
      description 'ヒロイン情報を1件返却する'
      argument :id, Int, required: true, description: 'ID'
    end

    def heroine(id:)
      Heroine.find(id)
    end

    field :heroines, [Types::HeroineType], null: false do
      description 'ヒロイン情報を全件返却する'
      argument :ids, [Int], required: false, description: 'ID配列'
    end

    def heroines(ids: nil)
      if ids
        Heroine.where(id: ids)
      else
        Heroine.all
      end
    end

    field :dress, Types::DressType, null: false do
      description 'ドレス情報を1件返却する'
      argument :id, Int, required: true, description: 'ドレスID'
    end

    def dress(id:)
      Dress.includes(:dress_parameters).find(id)
    end

    field :dresses, [Types::DressType], null: false do
      description 'ドレス情報を返却する'
    end

    def dresses
      Dress.all
    end
  end
end
