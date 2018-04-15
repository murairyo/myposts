class AddUserToMyposts < ActiveRecord::Migration[5.1]
  def change
    add_reference :myposts, :user, index: true
  end
end
