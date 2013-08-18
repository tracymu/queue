class ChangeAddressColumn < ActiveRecord::Migration
  def change
  rename_column :restaurants, :address, :city


  end
end
