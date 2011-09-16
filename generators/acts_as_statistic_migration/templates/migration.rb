class ActsAsStatisticMigration < ActiveRecord::Migration
  def self.up
    create_table :measured_statistics do |t|
      t.column :klass, :string
      t.column :method, :string
      t.column :value, :float
      t.column :type, :string
      t.column :created_at, :datetime
    end
  end

  def self.down
    drop_table :measured_statistics
  end
end
