class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :first_name
      t.string :last_name
      t.references :studio, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
