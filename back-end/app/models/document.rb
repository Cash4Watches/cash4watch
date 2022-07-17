class Document < ApplicationRecord
    belongs_to :order
    has_one_attached :file
    # validates :name, presence: true, uniqueness: { case_sensitive: false }

    def file_url
        file.url
    end
end
