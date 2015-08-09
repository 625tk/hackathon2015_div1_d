class TweetController < ApplicationController
  # GET /
  def index
    @tweets = Tweet.first 20
  end

  # GET /tweet/more/:id.json
  def more
    @tweets = Tweet.where("id > ?", params[:id]).limit 5
  end

  # POST /tweet/create/tweet.json
  def create
    @tweet = Tweet.new tweet_params
    if @tweet.save
      format.json { render action: 'show', status: :created, location: @tweet }
    else
      format.json { render json: @tweet.errors, status: :unprocessable_entity }
    end
  end

  private
  
  def tweet_params
    params.require(:tweet).permit(:id, :reply_to_id, :text, :created_at)
  end
end
