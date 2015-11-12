class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.references :profile_1, index: true
      t.references :profile_2, index: true

      t.timestamps
    end
  end
end
