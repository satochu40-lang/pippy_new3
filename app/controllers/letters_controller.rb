class LettersController < ApplicationController
  # ログインしていない人をログイン画面に飛ばす門番だにゃ！
  before_action :authenticate_user!, only: [:new, :create]

  def index
    # 「includes(:user)」を入れると、名前を呼ぶのが早くなる魔法だにゃ！
  @letters = Letter.all.includes(:user).order(created_at: :desc)
  end

  def new
    @letter = Letter.new # 新しい便箋を用意するにゃ
  end

  def create
    @letter = Letter.new(letter_params)
    @letter.user_id = current_user.id # ログインしている人のIDをセットするにゃ！
    
    if @letter.save
      redirect_to letters_path # 保存できたら一覧に戻るにゃ
    else
      render :new # 失敗したらもう一度書き直しにゃ
    end
  end

  def edit
    @letter = Letter.find(params[:id]) # 編集したいお手紙を1通選んでくるにゃ
  end

  # 🌟 ついでに「直した内容を保存する」仕事も追加にゃ！ 🌟
  def update
    @letter = Letter.find(params[:id])
    if @letter.update(letter_params)
      redirect_to letters_path # 直せたら一覧に戻るにゃ
    else
      render :edit, status: :unprocessable_entity # ダメだったらもう一度編集画面にゃ
    end
  end
  private

  def letter_params
  # :content の横に :title を追加するにゃ！
  params.require(:letter).permit(:content, :title).merge(user_id: current_user.id)
end
end