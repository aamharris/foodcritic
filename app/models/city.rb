class City < ActiveRecord::Base
  has_many :restaurants
  has_many :users
end
