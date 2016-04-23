class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.integer :user_id
      t.integer :time_in_minutes
      t.string :location
      t.date :run_date

      t.timestamps null: false
    end
  end
end
