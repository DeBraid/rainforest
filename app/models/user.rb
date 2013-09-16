class User < ActiveRecord::Base
  has_many :reviews
  
  has_secure_password
  validates_presence_of :password, :on => :create

  def password_params
    params.require(:email).permit(:password, :password_confirmation)
  end

end