class Expenditure < ApplicationRecord
    belongs_to :user
    has_and_belongs_to_many :groups, foreign_key :user_id
end
