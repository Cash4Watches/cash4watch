class Review < ApplicationRecord
    belongs_to :user
    def user_name
        user.name
    end
end
