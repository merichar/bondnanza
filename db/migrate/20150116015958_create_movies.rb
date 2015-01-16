class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :imdb
      t.references :watch_status, index: true

      t.timestamps null: false
    end
    add_foreign_key :movies, :watch_statuses
  end
end
