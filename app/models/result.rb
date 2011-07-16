class Result < ActiveRecord::Base
#attr_accessible :id, :real_price, :escore, :route, :start_time, :end_time, :stops, :price_tag, :transportation, :transit_time, :start_date, :end_date
#this is so we can sort on this:
#acts_as_list

attr_accessible :id, :departure, :arrival, :real_price, :escore, :vehicles, :start_date_time, :end_date_time, :start_date, :end_date, :start_time, :end_time, :stops, :price_tag, :transit_time, :start_location, :end_location, :position, :train, :plane, :bus, :ferry

cattr_reader :per_page
@@per_page = 10

has_many :voyages
has_many :inbetweeners

	def self.search(search)
		self.all #for now, change later
	end
	
	
	
	def validvehicles?(params)
		#if (all the vehicles used in this result)
		#are also part of the list of vehicles allowed 
		#by the checkbox
		return true
	
	end

end
