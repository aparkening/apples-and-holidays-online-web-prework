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


  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

loop through holidays for supplies
  holiday_hash.each do ||

end


  # Question 6
  # Write a method that uses a loop to list out all the supplies you have for each holiday and the season
  describe "#all_supplies_in_holidays" do

    # There are two ways we might go about outputting a big block of text. One way
    # is to iterate through everything we want output, and puts it line by line. Another
    # way is to build a large string, and puts it all at once. How you choose to do it
    # is entirely up to you, and depends on what you think works best in any given
    # situation.

    before do

    # This funny looking <<-TEXT thing is called heredoc. It's a multi-line string
    # delimiter that makes it really easy for us to write multi-line strings in the middle
    # of code. The TEXT part is arbitrary too. It could easily have been <<-BLAHBLAH. The only
    # requirement is that you use the same word to end the multi-line string.

    # For more info about heredocs, see this link: http://en.wikibooks.org/wiki/Ruby_Programming/Here_documents

      @output = <<-TEXT
Winter:
  Christmas: Lights, Wreath
  New Years: Party Hats
Summer:
  Fourth Of July: Fireworks, BBQ
Fall:
  Thanksgiving: Turkey
Spring:
  Memorial Day: BBQ
TEXT
    end

    # For the purposes of this test, we are assuming that you decided to output your list
    # of holiday supplies line by line. If, on the other hand, you decided to output it
    # as one big chunk, comment out this test, and uncomment the one below it.

    it "should output the formatted list of holidays and their supplies" do
      @output.each_line do |line|
        expect($stdout).to receive(:puts).with(line.chomp)
      end

      all_supplies_in_holidays(holiday_supplies)
    end

    # it "should output the formatted list of holidays and their supplies" do
    #   expect($stdout).to receive(:puts).with(@output)
    #   all_supplies_in_holidays(holiday_supplies)
    # end




def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







