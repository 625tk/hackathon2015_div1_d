class TweetController < ApplicationController
  protect_from_forgery except: [:create, :update]
  before_action :time_check

  def before_index

  end
  # GET /
  def index
    @tweets = Tweet.last(20).reverse
  end

  # GET /tweets/more/:id.json
  def more
    @tweets = Tweet.where("id > ?", params[:id]).limit(5)
  end

  # POST /tweets
  def create
    @tweet = Tweet.new

    if params[:text] == ""
      respond_to do |format|
        format.json { render json: @tweet.errors, status: :unprocessable_entity }
      end
      return
   end

    @tweet.text = params[:text]
    respond_to do |format|
      if @tweet.save
        format.json { render json: @tweet }
      else
        format.json { render json: @tweet.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @tweet = Tweet.find(params[:id])
    case params[:reaction_type]
    when '1' then
      @tweet.cheer += 1
    when '2' then
      @tweet.break += 1
    end

    respond_to do |format|
      if @tweet.save!
        format.json { render json: @tweet }
      else
        format.json { render json: @tweet.errors, status: :unprocessable_entity  }
      end
    end
  end

  private

  def time_check
    if Time.now.hour < 0 || 24 < Time.now.hour 
      render :before_index
    end
  end

  def tweet_params
    params.require(:tweet).permit(:id, :reply_to_id, :text, :created_at)
  end
end
