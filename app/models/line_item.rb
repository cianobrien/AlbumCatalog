class LineItem < ActiveRecord::Base
  belongs_to :album
  belongs_to :profile
  validates :album, uniqueness: { scope: :profile, message: " is already on your profile"}
end
