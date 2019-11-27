class Item < ApplicationRecord
    validates :title, :description, :price, :image_url, presence: true
    validates :title, length: { in: 5..90 }
    validates :description, length: { in: 20..500 }
    validates :price, numericality: { greater_than: 0 }

    has_many :jointcarditems 
    has_many :carts, through: :jointcarditems

end