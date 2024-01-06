class WorkerDesire < ApplicationRecord
  belongs_to :shift
  validates :name, presence: true

  DAYS = %w[monday tuesday wednesday thursday friday saturday sunday]
  # 各曜日で開始時間が終了時間よりも前になっているかを検証
  DAYS.each do |day|
    validate do
      start_time = send("start_time_#{day}")
      end_time = send("end_time_#{day}")

      unless start_time && end_time
        errors.add("start_time_#{day}", "must be present")
      end

      if start_time > end_time
        errors.add("start_time_#{day}", "must be before end time")
      end
    end
  end
end
