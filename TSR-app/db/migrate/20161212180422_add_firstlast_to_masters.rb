class AddFirstlastToMasters < ActiveRecord::Migration[5.0]
  def change
    add_column :masters, :first_name, :string
    add_column :masters, :last_name, :string
  end
end
