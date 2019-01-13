class CreateAlbumDestinations < ActiveRecord::Migration[5.2]
  def change
    create_table :album_destinations do |t|
      t.integer :album_id
      t.integer :destination_id

      t.timestamps
    end
    add_index :album_destinations, [:album_id, :destination_id]
  end
end
