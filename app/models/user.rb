class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :comparisons
  has_many :inferior_movies, through: :comparisons
  has_many :superior_movies, through: :comparisons


end
