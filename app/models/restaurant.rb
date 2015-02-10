class Restaurant < ActiveRecord::Base
  belongs_to :city
  has_many :reviews
  has_many :reviewers, through: :reviews
  belongs_to :owner, class_name: "User", foreign_key: :owner_id
  #customers/reviewers and restaurant owners
end
