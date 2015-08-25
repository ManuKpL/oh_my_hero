class AddValidatedToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :validated, :boolean
  end
end
