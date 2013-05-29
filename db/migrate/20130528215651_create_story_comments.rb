class CreateStoryComments < ActiveRecord::Migration
  def change
    create_table :story_comments do |t|
      t.integer :story_id
      t.text :body
      t.integer :author_id

      t.timestamps
    end
  end
end
