class Aircraft < ActiveRecord::Base
	has_many :w1s, dependent: :destroy
	has_many :w1c1s, dependent: :destroy
	has_many :w2s, dependent: :destroy
	has_many :w2c1s, dependent: :destroy
end
