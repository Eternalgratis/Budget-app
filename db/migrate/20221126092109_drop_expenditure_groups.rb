class DropExpenditureGroups < ActiveRecord::Migration[7.0]
  def change
    drop_table :expenditure_groups
  end
end
