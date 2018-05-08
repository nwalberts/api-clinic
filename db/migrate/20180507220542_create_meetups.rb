class CreateMeetups < ActiveRecord::Migration[5.2]
  def change
    create_table :meetups do |t|
    t.string :name, null: false
    t.string :link, null: false
    t.string :city, null: false
    t.string :state, null: false
    t.text :description, null: false
    t.string :lon, null: false
    t.string :lat, null: false

    t.timestamps null: false
  end
  end
end
