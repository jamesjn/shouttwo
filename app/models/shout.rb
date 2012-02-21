class Shout < ActiveRecord::Base
  validates :title, :presence => true, :length => { :maximum => 50 }
  validates :user_id, :presence => true
  validates :media1_type, 
            :presence => true, 
            :inclusion => { :in => %w(video picture text)}
  validates :media1_content, :presence => true
  validates :media2_type, :presence => true,
            :presence => true, 
            :inclusion => { :in => %w(video picture text)}
  validates :media2_content, :presence => true
end