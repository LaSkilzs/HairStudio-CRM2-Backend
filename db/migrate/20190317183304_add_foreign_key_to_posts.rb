class AddForeignKeyToPosts < ActiveRecord::Migration[5.2]
  def change
    add_reference :posts, :user, index: true
    add_foreign_key :posts, :users
  end
end
