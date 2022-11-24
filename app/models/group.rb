class Group < ApplicationRecord
    belongs_to :user, foreign_key: :user_id
    has_many :expenditures
    def sumup
        expenditures.sum(:amount)
    end 
end
