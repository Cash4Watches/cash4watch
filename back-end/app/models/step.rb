class Step < ApplicationRecord
    default_scope { order('index ASC') }
    belongs_to :order
end
