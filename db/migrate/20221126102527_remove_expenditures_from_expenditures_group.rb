class RemoveExpendituresFromExpendituresGroup < ActiveRecord::Migration[7.0]
  def change
    remove_reference(:expenditures_groups, :expenditures, index: true, foreign_key: true)
  end
end
