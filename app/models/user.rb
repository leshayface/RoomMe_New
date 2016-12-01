class User < ApplicationRecord
	has_many :rooms

	enum poster_type: [:flatmate, :landlord, :agent]

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
