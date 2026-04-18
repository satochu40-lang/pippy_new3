class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # 🌟 ここを追加！「ユーザーはたくさんのお手紙（letters）を持っている」という魔法にゃ！
  has_many :letters
end