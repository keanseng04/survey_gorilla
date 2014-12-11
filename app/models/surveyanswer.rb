class Surveyanswer < ActiveRecord::Base
  belongs_to :choice
  belongs_to :surveyvote
end
