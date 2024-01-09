class CreateWorkerDesires < ActiveRecord::Migration[7.1]
  def change
    create_table :worker_desires do |t|
      t.string :name
      t.text :comment
      t.time :start_time_monday
      t.time :end_time_monday
      t.time :start_time_tuesday
      t.time :end_time_tuesday
      t.time :start_time_wednesday
      t.time :end_time_wednesday
      t.time :start_time_thursday
      t.time :end_time_thursday
      t.time :start_time_friday
      t.time :end_time_friday
      t.time :start_time_saturday
      t.time :end_time_saturday
      t.time :start_time_sunday
      t.time :end_time_sunday
      t.references :shift, null: false, foreign_key: true

      t.timestamps
    end
  end
end
