class CreateFutureVisits < ActiveRecord::Migration
  def change
    create_table :future_visits do |t|
      t.integer :user_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
