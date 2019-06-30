class Relationship < ApplicationRecord
  #follower_id == @user.id followerメソッドで呼び出し
  
  #followed_id == @user.id followedメソッドで呼び出し,
  #↑フォローされているユーザー
  
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"
  validates :follower_id, presence: true
  validates :followed_id, presence: true
end
