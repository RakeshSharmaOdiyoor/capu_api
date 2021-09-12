class Team < ApplicationRecord
	belongs_to :tournament
	has_many :players
end
