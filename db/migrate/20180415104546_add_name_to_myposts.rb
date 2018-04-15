class AddNameToMyposts < ActiveRecord::Migration[5.1]
  def change
    add_column :myposts, :name, :string
  end
end
