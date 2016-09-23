class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.date :date
      t.time :hour_start
      t.time :hour_end
      t.belongs_to :driver, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
