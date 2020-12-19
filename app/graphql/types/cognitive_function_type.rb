module Types
  class CognitiveFunctionType < Types::BaseObject
    field :id, ID, null: false
    field :direction, String, null: false
    field :action, String, null: false
    field :symbol, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :function_name, String, null: false

    def function_name
       byebug
      [object.direction, object.action].compact.join(" ")
    end
  end
end
