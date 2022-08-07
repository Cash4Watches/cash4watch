class Order < ApplicationRecord
  # before_create :randomize_id
  # default_scope { order('created_at DESC') }
  belongs_to :user
  has_many :documents, dependent: :destroy
  has_many :steps, dependent: :destroy
  has_many :images, dependent: :destroy
  paginates_per 10
  def user_name
    user.full_name
  end
  # private
  # def randomize_id
  #   begin
  #     self.id = SecureRandom.random_number(1_000_000)
  #   end while User.where(id: self.id).exists?
  # end
end
