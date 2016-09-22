class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :last_name
      t.string :first_name
      t.string :phone_number
      t.belongs_to :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
