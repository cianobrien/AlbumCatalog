class User < ActiveRecord::Base
  validates :name, presence: true
  validates :name, format: { with: /\A[a-z0-9]+\z/ }
  validates :name, uniqueness: true
  has_many :followships, dependent: :destroy
  has_secure_password
end
