class Ride < ActiveRecord::Base
  # write associations here
  belongs_to :user
  belongs_to :attraction

  validates :user_id, presence: true
  validates :attraction_id, presence: true


end
