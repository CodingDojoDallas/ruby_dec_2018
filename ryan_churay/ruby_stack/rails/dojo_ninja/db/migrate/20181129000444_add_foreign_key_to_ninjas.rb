class AddForeignKeyToNinjas < ActiveRecord::Migration
  def change
    add_reference :ninjas, :dojo, index: true, foreign_key: true
  end
end
