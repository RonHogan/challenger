class ChallangeWall < ApplicationRecord
	belongs_to :user
	validates :title, presence: true, length: {maximum: 160}
end
