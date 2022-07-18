class Order < ApplicationRecord
    belongs_to :user
    has_many :documents, dependent: :destroy
    has_many :steps, dependent: :destroy
end
