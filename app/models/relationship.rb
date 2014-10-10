class Relationship < ActiveRecord::Base
	belongs_to :aircraft
	belongs_to :actype
end
