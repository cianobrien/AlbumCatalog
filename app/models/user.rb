class User < ActiveRecord::Base
  validates :name, presence: true
  validates :name, format: { with: /\A[a-z0-9]+\z/ }
  validates :name, uniqueness: true
  has_many :followships, dependent: :destroy
  belongs_to :profile
  has_secure_password

  def following?(prof)
    @return = false
    prof.followships.each do |foll|
      if foll.user == self
        @return = true
      end
    end
    @return
  end
end
