class Shift < ApplicationRecord
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
end
