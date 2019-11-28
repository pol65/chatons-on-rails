class JointsCardsItemsController < ApplicationController
    def index

    end
    
    def create
        add_item
    end
    def add_item
        JointCardItem.create(cart_id: self.id, item_id: self.id)
    end
end
