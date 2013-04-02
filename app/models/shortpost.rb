class Shortpost < ActiveRecord::Base
  attr_accessible :spost, :usr_id
  belongs_to :user
  validates :spost, :length => { :maximum => 140 }
end
