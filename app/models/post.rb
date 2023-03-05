class Post < ApplicationRecord

    validates :title, :drink_id, presence: true

    belongs_to :drink
end
