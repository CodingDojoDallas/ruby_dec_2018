class CreateMessage < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :author
      t.string :message
      t.references :post, foreign_key: true
      t.references :user, foreign_key: true
    end
  end
end
