class AddVehicleTypeToAvailabilities < ActiveRecord::Migration
  def change
    add_reference :availabilities, :vehicle_type, index: true, foreign_key: true
    add_column :availabilities, :comment, :string
    add_column :availabilities, :affected, :boolean, default: false
  end
end
