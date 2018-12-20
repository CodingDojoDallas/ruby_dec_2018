class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.references :imageable, polymorphic: true

      t.timestamps
    end
  end
end
