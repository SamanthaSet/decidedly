class Decision < ActiveRecord::Base

  has_many :choices, :class_name => "Choice", :foreign_key => "decision_id", :dependent => :destroy
  has_many :factors, :class_name => "Factor", :foreign_key => "decision_id", :dependent => :destroy
  has_many :ratings, :through => :factors
  has_many :ratings, :through => :choices


  belongs_to :user


  validates :user, :presence => true
  validates :description, :presence => true
end
