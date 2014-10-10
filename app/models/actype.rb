class Actype < ActiveRecord::Base
	has_many :relationships, dependent: :destroy
	has_many :aircrafts, through: :relationships
end
