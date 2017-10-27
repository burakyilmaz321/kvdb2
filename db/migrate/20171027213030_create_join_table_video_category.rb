class CreateJoinTableVideoCategory < ActiveRecord::Migration[5.1]
  def change
    create_join_table :videos, :categories do |t|
      t.index [:video_id, :category_id]
      # t.index [:category_id, :video_id]
    end
  end
end
