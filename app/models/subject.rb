class Subject < ActiveRecord::Base
	belongs_to :user

	has_many :standard_subjects
	has_many :standards,through: :standard_subjects
end
