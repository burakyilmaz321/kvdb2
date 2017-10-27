class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :url
      t.string :title
      t.string :thumbnail
      t.string :year
      t.string :actors
      t.string :duration
      t.integer  :rating
      t.string :category
      t.text :summary

      t.timestamps
    end
  end
end
