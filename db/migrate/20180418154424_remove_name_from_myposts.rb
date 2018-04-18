class RemoveNameFromMyposts < ActiveRecord::Migration[5.1]
  def change
    remove_column :myposts, :name, :string
  end
end
