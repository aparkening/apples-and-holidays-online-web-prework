require 'pry'

  # holiday_hash looks something like:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # 

# Return the second element in the 4th of July array
def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end
  
# Add supply to winter holidays
def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].collect do |holiday, gear| gear << supply
  end
  holiday_hash
end

# Add supply to memorial day array
def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
  holiday_hash
end

# Add holiday and associated supplies to a given season
def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

# Return an array of all winter supply values
def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

# Iterate through given hash and output all supplies for each holiday and season
def all_supplies_in_holidays(holiday_hash)
  
  
  holiday_string = ""

  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.each do |season, holiday|
    season = season.to_s
    Puts "#{season}:"
    add season to string
    holiday.size 
    
    <<-
    
    
    
    

end




def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







