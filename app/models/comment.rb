class Comment < ApplicationRecord
    belongs_to :prototype  # prototypeテーブルとのアソシエーション
    belongs_to :user  

    validates :content, presence: true
    validates :prototype, presence: true
    validates :user, presence: true
end
