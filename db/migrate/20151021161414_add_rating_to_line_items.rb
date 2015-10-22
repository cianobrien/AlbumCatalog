class AddRatingToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :rating, :decimal, default: 0
  end
end
