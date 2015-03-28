class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.string :caption
      t.references :user

      t.timestamps
    end
  end
end
