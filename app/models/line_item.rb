class LineItem < ActiveRecord::Base
  belongs_to :album
  belongs_to :profile
  validates :album, uniqueness: { scope: :profile, message: "This album is already in your profile" }
end
