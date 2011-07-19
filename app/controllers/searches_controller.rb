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

#@startresults = Result.where("(NOT(train) OR :traincheckbox)AND (NOT(bus) OR :buscheckbox)AND(NOT(plane) OR :planecheckbox)AND(NOT(ferry) OR :ferrycheckbox) AND start_date = :start_date AND start_location = :start_location AND end_location = :end_location", {:traincheckbox=> params[:traincheckbox], :planecheckbox=> params[:planecheckbox], :buscheckbox=> params[:buscheckbox],:ferrycheckbox=> params[:ferrycheckbox],:taxicheckbox=> params[:taxicheckbox], :start_date => params[:start_date], :end_date=>params[:end_date],:start_location => params[:start_location], :end_location => params[:end_location]}).order(params[:sort])

@startresults = Result.where("(NOT(train) OR :traincheckbox)AND (NOT(bus) OR :buscheckbox)AND(NOT(plane) OR :planecheckbox)AND(NOT(ferry) OR :ferrycheckbox) AND start_date = :start_date AND start_location = :start_location AND end_location = :end_location", {:traincheckbox=> params[:traincheckbox], :planecheckbox=> params[:planecheckbox], :buscheckbox=> params[:buscheckbox],:ferrycheckbox=> params[:ferrycheckbox],:taxicheckbox=> params[:taxicheckbox], :start_date => params[:start_date], :end_date=>params[:end_date],:start_location => params[:start_location], :end_location => params[:end_location]}).order(params[:sort])

@returnresults = Result.where("(NOT(train) OR :traincheckbox)AND (NOT(bus) OR :buscheckbox)AND(NOT(plane) OR :planecheckbox)AND(NOT(ferry) OR :ferrycheckbox) AND start_date = :return_date AND start_location = :end_location AND end_location = :start_location", {:traincheckbox=> params[:traincheckbox], :planecheckbox=> params[:planecheckbox], :buscheckbox=> params[:buscheckbox],:ferrycheckbox=> params[:ferrycheckbox],:taxicheckbox=> params[:taxicheckbox], :start_date => params[:start_date], :return_date=>params[:return_date],:start_location => params[:start_location], :end_location => params[:end_location]}).order(params[:sort])
    respond_to do |format|
      format.html # results.html.erb
      format.xml  { render :xml => @voyage }
	format.js
    end
  end

def inbetweener

end

end
