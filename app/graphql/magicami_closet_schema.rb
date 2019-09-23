# frozen_string_literal: true

class MagicamiClosetSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
end
