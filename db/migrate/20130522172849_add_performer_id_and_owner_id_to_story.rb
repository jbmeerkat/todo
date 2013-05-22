class AddPerformerIdAndOwnerIdToStory < ActiveRecord::Migration
  def up
    add_column :stories, :owner_id, :integer
    add_column :stories, :performer_id, :integer
    remove_column :stories, :user_id
  end

  def down
    remove_column :stories, :owner_id
    remove_column :stories, :performer_id
    add_column :stories, :user_id, :integer
  end
end
