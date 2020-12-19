module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :personalities,
          [Types::PersonalityType],
          null: false,
          description: "Returns a list of personalities"

    def personalities
      Personality.all
    end
  end
end
