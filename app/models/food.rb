class Food < ActiveRecord::Base
	validates :name, presence: true
	belongs_to :menu
end
