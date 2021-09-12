class Assessment < ApplicationRecord
	has_many :notes
	belongs_to :player
	belongs_to :user
end
