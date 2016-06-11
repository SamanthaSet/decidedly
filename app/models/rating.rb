class Rating < ActiveRecord::Base

  belongs_to :choice
  belongs_to :factor

  validates :choice_id, :presence => true
  validates :factor_id, :presence => true
  validates :value, :presence => true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
end
