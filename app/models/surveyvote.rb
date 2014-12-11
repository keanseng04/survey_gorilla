class Surveyvote < ActiveRecord::Base
  belongs_to :user
  belongs_to :survey
  has_many :choices, through: :surveyanswers
end
