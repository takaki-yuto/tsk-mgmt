class UsersController < ApplicationController

  def index
    return nil if params[:keyword] == ""
      # インクリメンタルサーチで検索したものを@userに格納
    @users = User.where(['name LIKE ?', "%#{params[:keyword]}%"] ).where.not(id: current_user.id).limit(10)
    respond_to do |format|
      format.html
      format.json
    end
  end

end
