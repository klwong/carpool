class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.integer :type
      t.integer :city_id
      t.integer :event_id

      t.timestamps
    end
  end
end
