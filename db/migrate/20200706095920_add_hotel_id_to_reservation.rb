class AddHotelIdToReservation < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :hotel_id, :integer
  end
end
