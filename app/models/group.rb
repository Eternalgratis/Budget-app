class Group < ApplicationRecord
    belongs_to :user
    has_and_belongs_to_many :expenditures, foreign_key: :user_id
end
