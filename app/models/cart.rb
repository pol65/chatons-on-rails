class Cart < ApplicationRecord
    belongs_to :user
    
    has_many :joint_card_items
    has_many :items,  through: :joint_card_items
end
