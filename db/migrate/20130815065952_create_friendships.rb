class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.integer :owner_id
      t.integer :friend_id
      t.boolean :accepted

      t.timestamps
    end
  end
end
