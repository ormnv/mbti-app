# app/graphql/types/user_type.rb
module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :email, String, null: false
    field :full_name, String, null: false
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :personality, Types::PersonalityType, null: true
    field :peers, [Types::UserType], null: true

    def full_name
      object.full_name
    end

    def peer_names
      object.peer_names
    end
  end
end