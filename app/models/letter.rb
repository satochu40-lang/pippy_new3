class Letter < ApplicationRecord
  # 🌟 もし無ければ、この1行も確認にゃ！
  belongs_to :user
end