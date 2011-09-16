class ActAsStatisticMigrationGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      m.migration_template 'migration.rb', 'db/migrate', :migration_file_name => 'acts_as_statistic_migration'
  end
end
