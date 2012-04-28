class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :type
      t.string :vehicle
      t.string :plate
      t.datetime :when
      t.string :from_landmark
      t.string :to_landmark
      t.integer :passenger_limit
      t.float :cost
      t.integer :user_id

      t.timestamps
    end
  end
end
