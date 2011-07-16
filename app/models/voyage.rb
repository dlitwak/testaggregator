class Voyage < ActiveRecord::Base
belongs_to :result

attr_accessible :id, :departure, :arrival, :position, :company, :real_price, :escore, :start_time, :end_date, :start_date, :end_time, :stops, :price_tag, :transportation, :transit_time, :start_location, :end_location


end
