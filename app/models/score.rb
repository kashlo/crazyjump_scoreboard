class Score < ActiveRecord::Base
	validates :player_name, presence: true
	validates :amount, presence: true
	validates :device_id, presence: true
end