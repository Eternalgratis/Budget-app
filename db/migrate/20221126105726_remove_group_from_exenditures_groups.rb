class RemoveGroupFromExendituresGroups < ActiveRecord::Migration[7.0]
  def change
    remove_reference(:expenditures_groups, :groups, index: true, foreign_key: true)
  end
end
