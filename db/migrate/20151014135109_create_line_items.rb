class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :album, index: true
      t.references :profile, index: true

      t.timestamps
    end
  end
end
