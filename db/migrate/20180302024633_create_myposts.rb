class CreateMyposts < ActiveRecord::Migration[5.1]
  def change
    create_table :myposts do |t|
      t.text :content
    end
  end
end
