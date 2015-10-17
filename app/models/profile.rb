class Profile < ActiveRecord::Base
  has_many :line_items, dependent: :destroy
  validates :name, uniqueness: true
  validates :profile_picture_url, allow_blank: true, format: {
  	with: %r{\.(gif|jpg|png)\Z}i,
   	message: 'must be a URL for GIF, JPG or PNG image.'
  }
end