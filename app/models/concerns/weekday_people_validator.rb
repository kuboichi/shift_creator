class WeekdayPeopleValidator < ActiveModel::Validator
    def validate(record)
        (0..47).each do |time|
            (0..6).each do |week_day|
                attribute_name = "week_day_#{time}_#{week_day}"
                value = record.send(attribute_name)
                unless value.is_a?(Integer) && value >= 0
                    record.errors.add(attribute_name, "must be a non-negative integer")
                end
            end
        end
    end
end