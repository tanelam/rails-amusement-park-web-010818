class User < ActiveRecord::Base
  # write associations here
  has_many :rides
  has_many :attractions, through: :rides
  has_secure_password

  validates :name, presence: true
  validates :password_digest, presence: true
  validates :happiness, presence: true
  validates :nausea, presence: true
  validates :height, presence: true
  validates :tickets, presence: true


  def mood
    if self.nausea > self.happiness
      "sad"
    elsif self.nausea < self.happiness
      "happy"
    end
  end
end
