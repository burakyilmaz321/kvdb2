class CreateJoinTableVideoActor < ActiveRecord::Migration[5.1]
  def change
    create_join_table :videos, :actors do |t|
      t.index [:video_id, :actor_id]
    end
  end
end
