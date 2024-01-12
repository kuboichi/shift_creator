class Shift < ApplicationRecord
    has_many :worker_desires, dependent: :destroy
    include ActiveModel::Validations
    validates_with WeekdayPeopleValidator

    class << self
        def id_to_token(id)
            Base64.urlsafe_encode64(id.to_s)
        end

        def token_to_id(token)
            Base64.urlsafe_decode64(token)
        end
    end

    # 各時間帯ごとの必要な人数のカラムを指定
    (0..47).each do |time|
        (0..6).each do |week_day|
            define_method("week_day_#{time}_#{week_day}") { read_attribute("week_day_#{time}_#{week_day}") }
            define_method("week_day_#{time}_#{week_day}=") { |value| write_attribute("week_day_#{time}_#{week_day}", value) }
        end
    end

    def int_to_day(int)
        days = %w[monday tuesday wednesday thursday friday saturday sunday]
        days[int]
    end

    def timeInt_to_string(time)
        hour = time / 2
        minute = (time % 2) * 30
        if minute == 0
            minute = "00"
        end
        return "#{hour}:#{minute}"
    end

    def timeString_to_int(time)
        hour = time.split(":")[0].to_i
        minute = time.split(":")[1].to_i
        return hour * 2 + minute / 30
    end

    def time_to_int(time)
        return time.hour * 2 + time.min / 30
    end

    def is_enough_worker(shift)
        (0..6).each do |week_day|
            (0..47).each do |time|
                people_work = 0
                shift.worker_desires.each do |worker|
                    if worker.send("determined_start_#{int_to_day(week_day)}").nil?
                        next
                    end
                    worker_start = timeString_to_int( worker.send("determined_start_#{int_to_day(week_day)}") )
                    worker_end = timeString_to_int( worker.send("determined_end_#{int_to_day(week_day)}") )
                    if worker_start <= time && time <= worker_end
                        people_work += 1
                    end
                end
                if people_work < shift.send("week_day_#{time}_#{week_day}")
                    puts people_work
                    puts shift.send("week_day_#{time}_#{week_day}")
                    puts time
                    puts week_day
                    return false
                end
            end
        end
        return true
    end

    def distribute_worker(shift)
        workers = shift.worker_desires.shuffle #毎回結果が異なるようにシャッフル
        people_added = Array.new(48) { Array.new(7) }
        (0..6).each do |week_day|
            (0..47).each do |time|
                people_needed = shift.send("week_day_#{time}_#{week_day}") 
                people_added[time][week_day] = 0
                # その時間に必要な人数が0より大きい場合に従業員を探す
                if people_needed > 0
                    workers.each do |worker|
                        worker_start = time_to_int( worker.send("start_time_#{int_to_day(week_day)}") )
                        worker_end = time_to_int( worker.send("end_time_#{int_to_day(week_day)}") )
                        # 従業員がその時間に働ける場合に追加（必要な人数が途中だけ少なくなるデータでは上手くいかない）
                        if worker_start <= time && time <= worker_end
                            people_added[time][week_day] += 1
                            if worker.send("determined_start_#{int_to_day(week_day)}").nil?
                                worker.send("determined_start_#{int_to_day(week_day)}=", timeInt_to_string(time))
                            else
                                worker.send("determined_end_#{int_to_day(week_day)}=", timeInt_to_string(time))
                            end
                        end
                        # 必要な人数に達したら次の時間帯へ
                        if shift.send("week_day_#{time}_#{week_day}") == people_added[time][week_day]
                            break
                        end
                    end
                end
            end
        end
    end
end
