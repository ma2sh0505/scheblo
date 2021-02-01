class TweetsController < ApplicationController
  before_action :authenticate_user!,except:[:index]
  before_action :set_tweet, only: [:show,:edit,:update,:destroy]


  def index
    @tweets = Tweet.all
  end

  def new 
    @tweet = Tweet.new
  end

  def show
  end

  def create
    @tweet = Tweet.create(tweet_params)
    if @tweet.save
      redirect_to root_path
    else 
      render :new
    end
  end

  def destroy
    if @tweet.destroy
    redirect_to root_path
    else
    render :show 
    end
  end

  def edit
  end

  def update
    if @tweet.update(tweet_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  private

  def tweet_params
    params.require(:tweet).permit(:title,:content,:start_time,:image).merge(user_id: current_user.id)
  end

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end
end
