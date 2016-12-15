class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string   :event_name
      t.text     :description
      t.string   :address
      t.string   :city
      t.string   :state
      t.string   :zipcode
      t.string   :country
      t.string   :email
      t.string   :origin
      t.string   :destination
      t.float    :latitude
      t.float    :longitude
      t.references :master, foreign_key: true
      t.references :apprentice, foreign_key: true

      t.timestamps
    end
  end
end
