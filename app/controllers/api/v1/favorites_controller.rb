class Api::V1::FavoritesController < ApplicationController
  def index
    favorites = Favorite.all
    render json: favorites
  end

  def update
    favorite = Favorite.find_by(user: logged_in_user, job_id: params[:job_id])

    if favorite
      @favorite_exists = false
      favorite.destroy
      render json: { favorite: favorite, favorited: @favorite_exists, message: 'Removed from favorites' }
    else
      favorite = Favorite.create(user: logged_in_user, job_id: params[:job_id])
      @favorite_exists = true
      render json: { favorite: favorite, favorited: @favorite_exists, message: 'Added to favorites' }
    end
  end
end
