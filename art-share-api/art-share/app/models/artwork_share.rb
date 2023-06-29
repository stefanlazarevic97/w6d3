class ArtworkShare < ApplicationRecord
    validates :artwork_id, :viewer_id, presence: false
    validates :artwork_id, uniqueness: { scope: :viewer_id }
    

end