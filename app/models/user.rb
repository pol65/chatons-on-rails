class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
    #validates :first_name, presence: true
    #validates :last_name, presence: true 
    has_one :cart 
    has_many :orders

  after_create :cart_create

# A améliorer et vite !

after_create :cart_create
  
def cart_create
    Cart.create( user_id: self.id)
  end


end
