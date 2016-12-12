class AddFirstlastToApprentices < ActiveRecord::Migration[5.0]
  def change
    add_column :apprentices, :first_name, :string
    add_column :apprentices, :last_name, :string
  end
end
