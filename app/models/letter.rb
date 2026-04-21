class Letter < ApplicationRecord
  belongs_to :user
  
  # 🌟 この1行を追加にゃ！「一通のお手紙に一枚の画像」という魔法にゃ
  has_one_attached :image
  
  validates :content, presence: true
end