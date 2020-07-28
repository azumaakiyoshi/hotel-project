class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :email
      t.datetime :checkin
      t.datetime :checkout
      t.integer :people

      t.timestamps
    end
  end
end
