require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
 holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << "Balloons"
  holiday_hash[:winter][:new_years] << "Balloons"
  # can I combine both holidays into one line?
end



def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end	



def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array 

end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end




#these last two were confusing

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts "#{season.capitalize}:"
    holidays.each do |holiday, supplies|
      capitalized_holiday = holiday.to_s.gsub("_"," ").split
      capitalized_holiday.each do |word_in_holiday_name|
        word_in_holiday_name.capitalize!
      end
       supplies.each do |supply|
        if supply != supplies.last
          supply << ","
        end
      end
      puts  "  #{capitalized_holiday.join(" ")}: #{supplies.join(" ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.collect do |season, holidays|
    holidays.collect do |holiday, supplies|
      holiday if supplies.include?("BBQ")
    end
  end.flatten.compact
end







