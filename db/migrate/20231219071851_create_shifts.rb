class CreateShifts < ActiveRecord::Migration[7.1]
  def change
    create_table :shifts do |t|
      t.integer :people_needed

      t.timestamps
    end
  end
end
