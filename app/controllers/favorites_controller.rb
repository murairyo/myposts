class FavoritesController < ApplicationController
   def create
    favorite = current_user.favorites.create(mypost_id: params[:mypost_id])
    redirect_to myposts_url, notice: "#{favorite.mypost.user.name}さんのブログをお気に入り登録しました"
   end
   
    def destroy
      favorite = current_user.favorites.find_by(mypost_id: params[:mypost_id]).destroy
      redirect_to myposts_url, notice: "#{favorite.mypost.user.name}さんのブログをお気に入り解除しました"
    end
end
