class Factor < ActiveRecord::Base
  has_many :ratings, :class_name => "Rating", :foreign_key => "factor_id", :dependent => :destroy
  belongs_to :decision
  belongs_to :user

  validates :factor_name, :presence => true

end
