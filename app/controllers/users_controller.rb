class UsersController < ApplicationController
  def show
    # 誰のマイページか見つけてくるにゃ
    @user = User.find(params[:id])
    # その人のお手紙だけを全部集めてくるにゃ！
    @letters = @user.letters
  end
end