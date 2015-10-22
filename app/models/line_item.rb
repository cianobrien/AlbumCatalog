class LineItem < ActiveRecord::Base
  belongs_to :album
  belongs_to :profile
  validates :album, uniqueness: { scope: :profile, message: " is already on your profile"}
  validates :rating, numericality: { greater_than_or_equal_to: 0 }
  validates :rating, numericality: { less_than_or_equal_to: 10 }
end
