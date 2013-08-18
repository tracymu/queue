class ChangeUrlColumnName < ActiveRecord::Migration
  def change
  	  rename_column :restaurants, :url, :website

  end
end
