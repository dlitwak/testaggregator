class ResultsController < ApplicationController  

def show

    @result = Result.find(params[:id])
	
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post }
    end
  end
end
