class Aircraft < ActiveRecord::Base
	has_many :w1s, dependent: :destroy
end
