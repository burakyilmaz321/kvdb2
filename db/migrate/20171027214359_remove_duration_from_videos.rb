class RemoveDurationFromVideos < ActiveRecord::Migration[5.1]
  def change
    remove_column :videos, :duration, :string
  end
end
