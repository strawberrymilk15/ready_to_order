class Shop < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :shop_name, presence: true
         validates :prefecture, presence: true
         validates :city, presence: true
         validates :other_address, presence: true
         validates :phone_number, presence: true

end
