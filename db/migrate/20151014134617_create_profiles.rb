class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :profile_picture_url

      t.timestamps
    end
  end
end
