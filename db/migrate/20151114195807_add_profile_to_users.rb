class AddProfileToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :profile, index: true, default: Profile.create
  end
end
