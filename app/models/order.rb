class Order < ApplicationRecord
    has_many :joinorderitems
    has_many :items, through: :joinorderitems

    belongs_to :user
end

