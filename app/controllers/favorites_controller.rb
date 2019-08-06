class FavoritesController < ApplicationController

  def index
    @favorite_posts=current_user.favorite_posts.recent.page(params[:page]).per(20)
  end

  def create
    favorite=Favorite.new
    favorite.user_id=current_user.id
    favorite.post_id=params[:post_id]

    if favorite.save
      flash[:success]="お気に入りに登録しました。"
      redirect_to posts_path
    else
      flash[:danger]="お気に入り登録に失敗しました。"
      redirect_to posts_path
    end
  end

  def destroy
     favorite=Favorite.find_by(post_id: params[:post_id], user_id: current_user.id)
     favorite.destroy
     flash[:success]="お気に入り登録を外しました。"
     redirect_to posts_path
  end
end
