module Types
  class MutationType < Types::BaseObject
    field :sign_in, mutation: Mutations::SignInMutation
    field :add_peer_set, mutation: Mutations::AddPeerSetMutation
    field :update_peer_set, mutation: Mutations::UpdatePeerSetMutation
  end
end
