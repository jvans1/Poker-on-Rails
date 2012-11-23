class HandsController < ApplicationController
  # GET /hands
  # GET /hands.json
  def index
    @hands = Hand.all.select{ |h| h.holecard_id < 170}

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hands }
    end
  end

  # GET /hands/1
  # GET /hands/1.json
  def show
    @hand = Hand.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hand }
    end
  end
  def winnings
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hand }
    end
  end
  def percent_winning
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hand }
    end
  end
  def losing
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hand }
    end
  end
end
