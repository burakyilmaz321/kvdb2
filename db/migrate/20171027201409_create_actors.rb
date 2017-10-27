class CreateActors < ActiveRecord::Migration[5.1]
  def change
    create_table :actors do |t|
      t.string :name
      t.string :img
      t.text :bio
      t.text :quote
      t.string :videos

      t.timestamps
    end
  end
end
