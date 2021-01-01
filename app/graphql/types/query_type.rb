module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :users,
      [Types::UserType],
      null: false,
      description: "Returns a list of users"

    def users
      User.preload(:personality).all
    end

    field :personalities,
      [Types::PersonalityType],
      null: false,
      description: "Returns a list of personalities"

    def personalities
      Personality.preload(:cognitive_function).all
    end

    field :me, Types::UserType, null: true

    def me
      context[:current_user]
    end
  end
end
