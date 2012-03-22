class View < ActiveRecord::Base
  attr_accessible :session_id, :shout_id 
  belongs_to :shout,
            :counter_cache => true
end
