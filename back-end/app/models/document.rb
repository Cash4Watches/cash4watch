class Document < ApplicationRecord
    belongs_to :order
    has_one_attached :file
end
