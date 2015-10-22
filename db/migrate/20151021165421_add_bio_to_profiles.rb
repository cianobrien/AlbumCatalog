class AddBioToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :bio, :text, default: "None Added"
  end
end
