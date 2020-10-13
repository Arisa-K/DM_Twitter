class LikesController < ApplicationController

    def index
        @likes = Like.where(tweet_id: params[:tweet_id])
    end
    def create
        Like.create(tweet_id: params[:tweet_id],　user_id: current_user.id)
        redirect_back(fallback_location: root_path)
    end

    def destroy
        Like.find(params[:id]).destroy
        redirect_back(fallback_location: root_path)
    end
end
