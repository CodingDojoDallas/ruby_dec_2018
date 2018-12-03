class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :author
      t.text :content
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
