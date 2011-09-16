class MeasuredStatistic < ActiveRecord::Base
  validates_existence_of :klass
  validates_existence_of :method
  validates_existence_of :value
  validates_existence_of :type
end
