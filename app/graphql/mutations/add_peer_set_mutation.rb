# app/graphql/mutations/add_peer_set_mutation.rb

module Mutations
  class AddPeerSetMutation < Mutations::BaseMutation
    argument :requesteePeerEmail, String, required: false

    field :peer_set, Types::PeerSetType, null: true
    field :errors, [String], null: false

    def resolve(requesteePeerEmail:)
      if context[:current_user].nil?
        raise GraphQL::ExecutionError,
              "You need to authenticate to perform this action"
      end
      # debugger
      new_peer = User.User.find_by!(email: requesteePeerEmail)

      # if PeerSet.exists_with_users(context[:current_user].id, new_peer.id)
      #   raise GraphQL::ExecutionError,
      #         "This peer set already exists"
      # end
      # debugger
      peer_set = PeerSet.new(
        first_user_id: 1,
        second_user_id: new_peer.id,
        first_user_confirmation: true,
        second_user_confirmation: nil
      )
      # peer_set.save
      if peer_set.save
        { peer_set: peer_set }
      else
        { errors: peer_set.errors.full_messages }
      end
    end
  end
end