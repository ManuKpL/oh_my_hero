class AddCoordinatesToHeros < ActiveRecord::Migration
  def change
    add_column :heros, :latitude, :float
    add_column :heros, :longitude, :float
  end
end
