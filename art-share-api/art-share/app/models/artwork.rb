class Model < ApplicationRecord
    validates :title, presence: true
    validates :image_url, presence: true, uniqueness: true
    validates :artist_id, uniqueness: { scope: :title }

    belongs_to :artist,
        class_name: :User
end