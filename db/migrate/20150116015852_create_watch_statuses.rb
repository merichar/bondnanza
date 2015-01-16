class CreateWatchStatuses < ActiveRecord::Migration
  def change
    create_table :watch_statuses do |t|
      t.string :key

      t.timestamps null: false
    end
  end
end
