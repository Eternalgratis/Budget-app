class AddExpenditureRefToExpendituresGroups < ActiveRecord::Migration[7.0]
  def change
    add_reference :expenditures_groups, :expenditures, null: false, foreign_key: true
  end
end

