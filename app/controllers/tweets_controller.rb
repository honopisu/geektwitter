class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    tweet = Tweet.new(tweet_params)
    if tweet.save
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  # 追記ここから
  def show
    @tweet = Tweet.find(params[:id])
  end
  # ここまで

  private
  def tweet_params
    params.require(:tweet).permit(:body)
  end
end