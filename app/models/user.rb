class User < ActiveRecord::Base
	has_many :standards
	has_many :subjects
	has_many :announcements
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
