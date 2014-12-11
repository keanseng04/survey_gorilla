class Choice < ActiveRecord::Base
  belongs_to :question
  has_many :surveyanswers
  has_many :surveyvotes, through: :surveyanswers
end
