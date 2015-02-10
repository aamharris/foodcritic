class User < ActiveRecord::Base
  has_many :owned_restaurants, class_name: "Restaurant", foreign_key: :owner_id
  has_many :reviews
  belongs_to :city

  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end
end
