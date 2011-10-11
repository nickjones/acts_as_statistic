# +acts_as_statistic+ enables dead-simple mesaurement of both ActiveRecord
# and ActiveController methods in a normalized way.  The goal is to enable
# SQL based aggregation of the statistics but maintain a normalized schema
# for storage.
# Author:: Nick Jones
# Copyright:: Copyright (c) 2011 Nick Jones
# License:: MIT License (http://www.opensource.org/licenses/mit-license.php)
require "active_record"
Dir[File.join(File.dirname(__FILE__), 'acts_as_statistic', '*.rb')].each{|f| require f }

if defined?(ActiveRecord::Base)
  ActiveRecord::Base.extend ActsAsStatistic::MeasurementMethods
end
