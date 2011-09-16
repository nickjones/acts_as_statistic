require "active_record"

require "acts_as_statistic/measured_statistic"


if defined?(ActiveRecord::Base)
  ActiveRecord::Base.extend ActAsStatistic::MeasurableModel
end
