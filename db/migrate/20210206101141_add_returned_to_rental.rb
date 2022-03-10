class AddReturnedToRental < ActiveRecord::Migration[6.1]
  def change
    add_column :rentals, :returned, :boolean, default: false, null: false
  end
end
