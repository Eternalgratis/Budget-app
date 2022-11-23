class CreateExpenditureGroupJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_table :expenditure_groups, id: false do |t|
      t.belongs_to :group
      t.belongs_to :expense
  end
 end
end