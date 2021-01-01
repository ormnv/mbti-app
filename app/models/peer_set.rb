class PeerSet < ApplicationRecord
	has_one :user, foreign_key: :id, primary_key: :first_user_id
	has_one :user, foreign_key: :id, primary_key: :second_user_id

	scope :requests_from_user , ->(id) { where(first_user_id: id) }
	scope :requests_to_user , ->(id) { where(second_user_id: id) }

	scope :unconfirmed_peer_requests, -> { where(first_user_confirmation: false).or(where(second_user_confirmation: false)) }
	scope :confirmed_peer_requests, -> { where(first_user_confirmation: true, second_user_confirmation: true) }

	scope :confirmed_requests_from_user , ->(id) { requests_from_user(id).confirmed_peer_requests }
	scope :unconfirmed_requests_from_user , ->(id) { requests_from_user(id).unconfirmed_peer_requests }

	scope :confirmed_requests_to_user , ->(id) { requests_to_user(id).confirmed_peer_requests }
	scope :unconfirmed_requests_to_user , ->(id) { requests_to_user(id).unconfirmed_peer_requests }

	scope :with_user, ->(id) { where(first_user_id: id).or(where(second_user_id: id)) }

	scope :confirmed_requests_with_user , ->(id) { confirmed_peer_requests.with_user(id) }


	def self.exists_with_users(user_1, user_2)
		peer_ids =  [ user_1.id, user_2.id]
		return where(first_user_id: peer_ids, second_user_id: peer_ids).any?
	end 

	def self.exists_with_users(user_1, user_2)
		peer_ids =  [ user_1.id, user_2.id]
		return where(first_user_id: peer_ids, second_user_id: peer_ids).any?
	end 
end
