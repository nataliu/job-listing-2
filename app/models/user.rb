class User < ApplicationRecord

  def admin?
    is_admin
  end


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
