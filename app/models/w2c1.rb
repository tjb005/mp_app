class W2c1 < ActiveRecord::Base
	belongs_to :aircraft
	validates :aircraft_id, presence: true
end
