class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.date :edate
      t.string :ecity
      t.string :estate
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
