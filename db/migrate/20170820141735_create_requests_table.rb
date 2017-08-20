class CreateRequestsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :app_requests do |t|
      t.string      :request_id
      t.integer     :request_time_in_milliseconds
      t.integer     :memory_in_mb
      t.integer     :objects
      t.integer     :classes
      t.integer     :modules
      t.integer     :floats
      t.integer     :strings
      t.integer     :regexps
      t.integer     :arrays
      t.integer     :hashes
      t.integer     :structs
      t.integer     :files
      t.timestamps
    end
  end
end
