class RemoveGroupsFromExendituresGroups < ActiveRecord::Migration[7.0]
  def change
    remove_reference(:expenditures_groups, :group, index: true, foreign_key: false)

  end
end
