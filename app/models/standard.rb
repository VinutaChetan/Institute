class Standard < ActiveRecord::Base
	belongs_to :user

	has_many :standard_subjects
	has_many :subjects,through: :standard_subjects
end
