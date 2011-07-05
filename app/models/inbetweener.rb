class Inbetweener < ActiveRecord::Base

belongs_to :result

attr_accessible :id, :company, :taxi_price, :bus_price, :train_price, :shuttle_price, :start_name, :end_name



end
