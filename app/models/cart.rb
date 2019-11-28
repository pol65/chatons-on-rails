class Cart < ApplicationRecord
    belongs_to :user
    
    has_many :jointcarditems
    has_many :items,  through: :jointcarditems
end
