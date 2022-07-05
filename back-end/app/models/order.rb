class Order < ApplicationRecord
    belongs_to :user
    has_many :documents
    has_many :steps
end
