FactoryBot.define do
  factory :worker_desire do
    name { "Test name" }
    comment { "Test comment" }
    start_time_monday { Time.parse("00:00") }
    end_time_monday { Time.parse("00:00") }
    start_time_tuesday { Time.parse("00:00") }
    end_time_tuesday { Time.parse("01:00") }
    start_time_wednesday { Time.parse("00:00") }
    end_time_wednesday { Time.parse("01:00") }
    start_time_thursday { Time.parse("00:00") }
    end_time_thursday { Time.parse("01:00") }
    start_time_friday { Time.parse("00:00") }
    end_time_friday { Time.parse("01:00") }
    start_time_saturday { Time.parse("00:00") }
    end_time_saturday { Time.parse("01:00") }
    start_time_sunday { Time.parse("00:00") }
    end_time_sunday { Time.parse("01:00") }
    association :shift
  end
end
