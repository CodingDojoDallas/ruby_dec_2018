class CreateStudios < ActiveRecord::Migration
  def change
    create_table :studios do |t|
      t.string :name
      t.string :genre
      t.string :city
      t.string :state

      t.timestamps null: false
    end
  end
end
