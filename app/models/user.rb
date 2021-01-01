class User < ApplicationRecord
	has_one :personality, foreign_key: :id

	has_many :users, through: :peer_sets

	# scope :unconfirmed_peer_requests, -> { PeerSet.where() }

	# def personality
	# 	Personality.find_by(id: personality_id)
	# end

	def peers
		peer_ids = PeerSet.confirmed_requests_with_user(id).
			pluck(:first_user_id, :second_user_id).flatten - [id]
		User.where(id: peer_ids)
	end

	def peer_names
		peers.map(&:full_name)
	end

	# returns peers requested but who have not confirmed the relationship 
	def requested_peers
		PeerSet.unconfirmed_requests_from_user
	end

	# returns peers requested but who have not confirmed the relationship 
	def declined_peers
		PeerSet.where(first_user_id: id).where(second_user_confirmation: false)
	end

	# returns peers requested who have confirmed the relationship 
	def confirmed_peers
		PeerSet.confirmed_requests_from_user
	end

	# returns peer requests awaiting user action 
	def peer_requests
		PeerSet.where(second_user_id: id).where(second_user_confirmation: nil)
	end

	def full_name
		[first_name, last_name].compact.join(" ")
	end

end
