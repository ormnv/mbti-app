module Types
  class PersonalityType < Types::BaseObject
    field :id, ID, null: false
    field :tagline, String, null: false
    field :description, String, null: false
    field :name, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :primary_function, Types::CognitiveFunctionType, null: false
    field :secondary_function, Types::CognitiveFunctionType, null: false
    field :tertiary_function, Types::CognitiveFunctionType, null: false
    field :inferior_function, Types::CognitiveFunctionType, null: false
  end
end
