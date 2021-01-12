class CreateDatasets < ActiveRecord::Migration[5.2]
  def change
    create_table :datasets do |t|
      t.decimal :temperature, precision: 10, scale: 2
      t.datetime :recorded_at, null: false, default: -> { 'NOW()' }
      
      t.timestamps
    end
  end
end
