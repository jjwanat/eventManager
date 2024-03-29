# Dependencies
require "csv"

# Class Definition
class EventManager
	def initialize
		puts "EventManager Initialized."
		filename = "event_attendees.csv"
		@file = CSV.open(filename, {headers: true, header_converters: :symbol})
	end

	def print_names
		@file.each do |line|
			# puts line.inspect
			# puts line[2] + " " + line[3]
			puts line[:first_name] + " " + line[:last_name]
		end
	end

	def print_numbers
		@file.each do |line|
			number = line[:homephone]
			clean_number = number.delete(".").delete("-").delete(" ").delete("(").delete(")")
			puts clean_number
		end
	end
end

# Script
manager = EventManager.new
manager.print_numbers