class Review < ApplicationRecord
  default_scope { order('created_at DESC') }
    belongs_to :user
    def user_name
        user.full_name
    end
end
