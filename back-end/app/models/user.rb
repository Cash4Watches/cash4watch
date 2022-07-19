class User < ApplicationRecord
  before_create :randomize_id
  has_many :orders, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_secure_password
  
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true
  private
  def randomize_id
    begin
      self.id = SecureRandom.random_number(1_000_000)
    end while User.where(id: self.id).exists?
  end
end
