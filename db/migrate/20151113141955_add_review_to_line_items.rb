class AddReviewToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :review, :text, default: "None"
  end
end
