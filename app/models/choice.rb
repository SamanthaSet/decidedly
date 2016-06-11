class Choice < ActiveRecord::Base

  has_many :ratings, :class_name => "Rating", :foreign_key => "choice_id", :dependent => :destroy
  belongs_to :decision
  belongs_to :user

  validates :choice_name, :presence => true

end
