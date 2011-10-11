# +acts_as_statistic+ enables dead-simple mesaurement of both ActiveRecord
# and ActiveController methods in a normalized way.  The goal is to enable
# SQL based aggregation of the statistics but maintain a normalized schema
# for storage.
# Author:: Nick Jones
# Copyright:: Copyright (c) 2011 Nick Jones
# License:: MIT License (http://www.opensource.org/licenses/mit-license.php)
module ActsAsStatistic
  class MeasuredStatistic < ActiveRecord::Base
    validates_existence_of :klass
    validates_existence_of :method
    validates_existence_of :value
    validates_existence_of :type
  end
end
