class CreateFriends < ActiveRecord::Migration[6.1]
  def change
    create_table :friends do |t|
      t.string :name
      t.bigint :friend_id

      t.timestamps
    end
  end
end
