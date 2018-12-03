class CreatePost < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.references :blog, foreign_key: true
      t.references :user, foreign_key: true
    end
  end
end
