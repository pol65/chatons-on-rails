class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
    #validates :first_name, presence: true
    #validates :last_name, presence: true 
    has_one :cart 
    has_many :orders

  after_create :generate_cart


  def generate_cart
      cartuser = User.last
    Cart.create(user_id: cartuser.id)
  end
end
