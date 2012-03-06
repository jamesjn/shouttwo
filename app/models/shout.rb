class Shout < ActiveRecord::Base
  attr_accessible :title, :user_id, :media1_content, :media2_content, :media1_type, :media2_type, :compare_type, :tags
  validates :title, 
            :presence => true, 
            :length => { :maximum => 50, :minimum => 1 }
  validates :user_id, :presence => true
  validates :media1_type, 
            :inclusion => { :in => %w(video picture text)}
  validates :media1_content, 
            :presence => true,
            :length => { :maximum => 100, :minimum => 1 }
  validates :media2_type, :presence => true,
            :inclusion => { :in => %w(video picture text)}
  validates :media2_content, 
             :presence => true,
            :length => { :maximum => 100, :minimum => 1 }
  belongs_to :user
  has_many :favorites
  delegate :username, :to => :user
end
