class TweetsController < ApplicationController
  
  def index
    @tweets = Tweet.all
  end

  def new 
    @tweet = Tweet.new
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def create
    Tweet.create(tweet_params)
    redirect_to root_path
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    if @tweet.destroy
    redirect_to root_path
    else
    render :show 
    end
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    @tweet = Tweet.find(params[:id])
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

end
