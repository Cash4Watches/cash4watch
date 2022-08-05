class Image < ApplicationRecord
  belongs_to :order
  has_one_attached :file

  def file_url
    file.url
  end
end
