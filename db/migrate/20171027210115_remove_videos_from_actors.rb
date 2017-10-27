class RemoveVideosFromActors < ActiveRecord::Migration[5.1]
  def change
    remove_column :actors, :videos, :string
  end
end
