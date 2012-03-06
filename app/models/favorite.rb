class Favorite < ActiveRecord::Base
  attr_accessible :shout_id, :user_id
  belongs_to :user
  belongs_to :shout
end
