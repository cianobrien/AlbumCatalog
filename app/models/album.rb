class Album < ActiveRecord::Base
  before_destroy :ensure_not_referenced_by_any_line_item
  has_many :line_items

  validates :name, :artist, :tracks, :year, :image_url, presence: true
  validates :name, uniqueness: { scope: :artist, message: "This album has already been entered" }
  validates :year, numericality: { greater_than_or_equal_to: 1900 }
  validates :year, numericality: { less_than_or_equal_to: 2015 }
  validates :image_url, allow_blank: true, format: {
  	with: %r{\.(gif|jpg|png)\Z}i,
   	message: 'must be a URL for GIF, JPG or PNG image.'
  }

  def get_rating
    @n = 0
    @amount = 0
    self.line_items.each do |item|
      if item.rating > 0
        @n = @n + 1
        @amount = @amount + item.rating
      end
    end
    if @amount > 0
      @amount/@n
    else
      @amount
    end
  end

  def find_line_item(prof)
    self.line_items.each do |item|
      if item.profile == prof
        item
      end
    end
  end
  
  def entered?(profile)
    if profile
      profile.albums.include? self
    else
      false
    end
  end

  private

  # ensure that there are no line items referencing this product
  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, 'Line Items present')
      return false
    end
  end
end
