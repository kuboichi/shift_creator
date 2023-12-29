class AddPeopleNeededColumnsToShifts < ActiveRecord::Migration[7.1]
  def change
    (0..47).each do |time|
      (0..6).each do |week_day|
        add_column :shifts, "week_day_#{time}_#{week_day}", :integer, default: 0
      end
    end
  end
end
