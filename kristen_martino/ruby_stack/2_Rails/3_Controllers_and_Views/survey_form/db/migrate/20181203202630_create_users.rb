class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :location
      t.string :language
      t.text :comment

      t.timestamps
    end
  end
end
