class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :check_in
      t.date :check_out
      t.references :hero, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
