class Expenditure < ApplicationRecord
    belongs_to :user, foreign_key: :user_id
    has_and_belongs_to_many :groups, foreign_key: :group_id
end
