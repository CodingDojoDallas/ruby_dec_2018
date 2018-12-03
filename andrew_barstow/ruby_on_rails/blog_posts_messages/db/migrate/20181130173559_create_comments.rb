class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :comment
      t.references :shade, polymorphic: true

      t.timestamps
    end
  end
end
