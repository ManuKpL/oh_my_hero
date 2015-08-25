class AddAddressToHeros < ActiveRecord::Migration
  def change
    add_column :heros, :address, :string
  end
end
