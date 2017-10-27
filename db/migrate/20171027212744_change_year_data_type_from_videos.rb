class ChangeYearDataTypeFromVideos < ActiveRecord::Migration[5.1]
  def change
    connection.execute(%q{
      ALTER TABLE VIDEOS
      ALTER COLUMN year
      TYPE INTEGER USING CAST(year AS INTEGER)
    })
  end
end
