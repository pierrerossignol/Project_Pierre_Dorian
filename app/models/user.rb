class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
def age
   # Difference in years, less one if you have not had a birthday this year.
    DateTime.current-birthdate
end
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  has_many :skills
  has_many :services
end
