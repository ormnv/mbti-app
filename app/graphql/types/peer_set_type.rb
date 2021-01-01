# app/graphql/types/peer_set_type.rb
module Types
  class PeerSetType < Types::BaseObject
    field :id, ID, null: false
    field :first_user_id, Integer, null: false
    field :second_user_id, Integer, null: false
    field :first_user_confirmation, Boolean, null: false
    field :second_user_confirmation, Boolean, null: true
  end
end