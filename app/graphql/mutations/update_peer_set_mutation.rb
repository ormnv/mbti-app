# app/graphql/mutations/update_peer_set_mutation.rb

module Mutations
  class UpdatePeerSetMutation < Mutations::BaseMutation
    argument :requester_peer_email, String, required: true
    argument :confirm_relationship, Boolean, required: true

    field :peer_set, Types::PeerSetType, null: true
    field :errors, [String], null: false

    def resolve(requester_peer_email:, confirm_relationship:)
      if context[:current_user].nil?
        raise GraphQL::ExecutionError,
              "You need to authenticate to perform this action"
      end

      new_peer = User.User.find_by!(email: requestee_peer_email)

      unless PeerSet.exists_with_users(context[:current_user].id, new_peer.id)
        raise GraphQL::ExecutionError,
              "This peer relationship does not exist"
      end

      peer_set = PeerSet.where(first_user_id: new_peer.id).where(second_user_id: context[:current_user].id).where(second_user_confirmation: nil)

      if peer_set.update(second_user_confirmation: confirm_relationship)
        { peer_set: peer_set }
      else
        { errors: peer_set.errors.full_messages }
      end
    end
  end
end