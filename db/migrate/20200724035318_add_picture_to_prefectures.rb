class AddPictureToPrefectures < ActiveRecord::Migration[5.2]
  def change
    add_column :prefectures, :picture, :string
  end
end
