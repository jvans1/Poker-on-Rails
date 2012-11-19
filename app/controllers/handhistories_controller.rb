class HandhistoriesController < ApplicationController
  # GET /handhistories
  # GET /handhistories.json
  def index
    # @handhistories = Handhistory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @handhistories }
    end
  end

  # GET /handhistories/1
  # GET /handhistories/1.json
  def show
    @handhistory = Handhistory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @handhistory }
    end
  end

end