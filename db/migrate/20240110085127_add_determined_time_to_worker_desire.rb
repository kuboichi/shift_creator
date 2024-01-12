class AddDeterminedTimeToWorkerDesire < ActiveRecord::Migration[7.1]
  def change
    add_column :worker_desires, :determined_start_monday, :text
    add_column :worker_desires, :determined_end_monday, :text
    add_column :worker_desires, :determined_start_tuesday, :text
    add_column :worker_desires, :determined_end_tuesday, :text
    add_column :worker_desires, :determined_start_wednesday, :text
    add_column :worker_desires, :determined_end_wednesday, :text
    add_column :worker_desires, :determined_start_thursday, :text
    add_column :worker_desires, :determined_end_thursday, :text
    add_column :worker_desires, :determined_start_friday, :text
    add_column :worker_desires, :determined_end_friday, :text
    add_column :worker_desires, :determined_start_saturday, :text
    add_column :worker_desires, :determined_end_saturday, :text
    add_column :worker_desires, :determined_start_sunday, :text
    add_column :worker_desires, :determined_end_sunday, :text
  end
end
