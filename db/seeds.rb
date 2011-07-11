# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
 result1 = Result.create(:start_location=>'London', :end_location=>'Toulouse', :transit_time=>7.5, :start_date=>'08/12/2011', :start_time=>'20:00:00',:end_date=>'2011-08-12',:end_time=>'11:00:00', :stops => 2, :price_tag=>155.0, :real_price=>220.0, :escore=>4, :vehicles=>'train, plane', :bus=>0, :train=>1, :plane=>1, :ferry=>0)
 
result2 = Result.create(:start_location=>'London', :end_location=>'Toulouse', :transit_time=>10.25, :start_date=>'08/12/2011', :start_time=>'20:00:00',:end_date=>'2011-08-12',:end_time=>'11:00:00', :stops => 2,
	:price_tag=>175.0, :real_price=>230.0, :escore=>5, :vehicles=>'bus, plane', :bus=>1, :train=>0, :plane=>1, :ferry=>0)
 result3 = Result.create(:start_location=>'London', :end_location=>'Toulouse', :transit_time=>15, :start_date=>'08/12/2011', :start_time=>'20:00:00',:end_date=>'2011-08-12',:end_time=>'11:00:00', :stops => 5,
	:price_tag=>115.0, :real_price=>140.0, :escore=>7, :vehicles=>'bus', :bus=>1, :train=>0, :plane=>0, :ferry=>0)
	
 #result4 = Result.create(:start_location=>'London', :end_location=>'Toulouse', :transit_time=>3.3, :start_date=>'2011/08/12', :start_time=>'20:00:00',:end_date=>'2011-08-12',:end_time=>'11:00:00', :stops => 0,	:price_tag=>315.0, :real_price=>340.0, :escore=>2, :vehicles=>['plane'])
 #result5 = Result.create(:start_location=>'Paris', :end_location=>'Toulouse', :transit_time=>8, :start_date=>'2011/08/12', :start_time=>'20:00:00',:end_date=>'2011-08-12',:end_time=>'11:00:00', :stops => 0,:price_tag=>58.0, :real_price=>60.0, :escore=>7, :vehicles=>['bus'])


	
 #voyages and inbetweeners
result1.voyages.create(:transportation=>'plane', :start_location=>'London', :end_location=>'Paris', :transit_time=>2, :start_date=>'2011/08/12', :start_time=>'20:00:00',:end_date=>'2011-08-12',:end_time=>'11:00:00', :stops => 0,
	:price_tag=>90.0, :real_price=>125.0, :escore=>2, :company=>'easyjet')
result1.voyages.create(:transportation=>'train', :start_location=>'Paris', :end_location=>'Toulouse', :transit_time=>5.5, :start_date=>'2011/08/12', :start_time=>'20:00:00',:end_date=>'2011-08-12',:end_time=>'11:00:00', :stops => 2,
	:price_tag=>65.0, :real_price=>95.0, :escore=>2, :company=>'sncf')
result1.inbetweeners.create(:company=>'none', :start_name=>'London City Center', :end_name=> 'London Stanstead Airport', :train_price=>10.0, :bus_price=>4.0, :shuttle_price=> 15.0, :taxi_price=>35.0)
result1.inbetweeners.create(:company=>'none', :start_name=>'Paris Orly', :end_name=> 'Paris City Center', :train_price=>10.0, :bus_price=>4.0, :shuttle_price=> 15.0, :taxi_price=>35.0)
result1.inbetweeners.create(:company=>'none', :start_name=>'Toulous Train Station Nord', :end_name=> 'Toulouse City Center', :train_price=>0.0, :bus_price=>0.0, :shuttle_price=> 0.0, :taxi_price=>0.0)
	
result2.voyages.create(:transportation=>'bus', :start_location=>'London', :end_location=>'Paris', :transit_time=>7, :start_date=>'2011/08/12', :start_time=>'20:00:00',:end_date=>'2011-08-12',:end_time=>'11:00:00', :stops => 2,
	:price_tag=>90.0, :real_price=>125.0, :escore=>3, :company=>'eurolines')	
result2.voyages.create(:transportation => 'plane', :start_location => 'Paris', :end_location => 'Toulouse', :transit_time => 3.25, :start_date=>'2011-08-12', :start_time=>'20:00:00',:end_date=>'2011-08-12',:end_time=>'11:00:00', :stops => 0,
	:price_tag => 85.0, :real_price => 105.0, :escore=>2, :company=>'ryanair')
	
result3.voyages.create(:transportation=>'bus', :start_location=>'London', :end_location=>'Paris', :transit_time=>7, :start_date=>'2011/08/12', :start_time=>'20:00:00',:end_date=>'2011-08-12',:end_time=>'11:00:00', :stops => 2,
	:price_tag=>60.0, :real_price=>75.0, :escore=>3, :company=>'ecolines')	
result3.voyages.create(:transportation => 'bus', :start_location => 'Paris', :end_location => 'Toulouse', :transit_time => 8.0, :start_date=>'2011-08-12', :start_time=>'20:00:00',:end_date=>'2011-08-12',:end_time=>'11:00:00', :stops => 3,
	:price_tag => 55.0, :real_price => 65.0, :escore=>4, :company=>'eurolines')
	
results = Array[result1, result2, result3]

