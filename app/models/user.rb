class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

  #comentado porque aun no esta creado
  # validates :description, presence: true
  # validates :city, presence: true
  # validates :country, presence: true


  has_many :plans
  has_many :bookings
  has_many :reviews

end
