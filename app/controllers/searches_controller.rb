class SearchesController < ApplicationController
  def new  
  	#@search = Search.new
	#@results = Results.all	
	
	respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @results }
    end
  
  end
#right now the below function is doing nothing
#eventually we can redirect through this function, instead of results, 
#whichshould computer what to display?
  def search
  	@results = Result.all
    @search = Search.new(params[:post])

    respond_to do |format|
      if @post.save
        format.html { rrender :action => "results" }
        format.xml  { render :xml => @post, :status => :created, :location => @post }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post.errors, :status => :unprocessable_entity }
      end
    end
  end

  def results
	sort_init 'price_tag'
	sort_update
	allowedvehicles = Array.[](params[:planecheckbox],params[:traincheckbox],params[:buscheckbox],params[:ferrycheckbox],params[:carcheckbox],params[:taxicheckbox],params[:bikecheckbox])
	
	
	##OLD ONE, it worked, go back to it if we fail
	@results = Result.order(params[:sort])
	#AND end_date == :end_date 
	#@results = Result.where("start_date == :start_date AND vehicles IN (:allowed_vehicles)", {:allowed_vehicles => allowedvehicles, :start_date => params[:start_date], :end_date=>params[:end_date]}).order(params[:sort])
#@results = Result.where("start_date == :start_date", {:allowed_vehicles => allowedvehicles, :start_date => params[:start_date], :end_date=>params[:end_date]}).order(params[:sort])
		# t.strftime("%m/%d/%Y")
	#where:
	#	start_date_time. end_date_time
	# forms of transportation, use .include? on the "vehicles" string
    respond_to do |format|
      format.html # results.html.erb
      format.xml  { render :xml => @voyage }
    end
  end

end
