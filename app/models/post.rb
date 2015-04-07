class Post < ActiveRecord::Base
  belongs_to :user

  def user_first_name
    user.first_name
  end

  def user_address_city
    user.address.city
  end
end
