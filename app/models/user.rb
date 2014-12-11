class User < ActiveRecord::Base
  has_many :surveyvotes
  has_many :surveys, through: :surveyvotes


  validates :username, uniqueness: true, presence: true

  def self.authenticate(username,password)
    user = User.where(username: username).first

    if user.password == password
      user
    else
      nil
    end
  end
end
