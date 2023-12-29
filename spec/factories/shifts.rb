FactoryBot.define do
  factory :shift do
    transient do
      week_day_count { 48 }
      hour_count { 7 }
    end

    before(:create) do |shift, evaluator|
      (0...evaluator.week_day_count).each do |day|
        (0...evaluator.hour_count).each do |hour|
          shift["week_day_#{day}_#{hour}"] = 0
        end
      end
    end
  end
end
