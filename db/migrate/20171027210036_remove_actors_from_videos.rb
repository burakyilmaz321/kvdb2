class RemoveActorsFromVideos < ActiveRecord::Migration[5.1]
  def change
    remove_column :videos, :actors, :string
  end
end
