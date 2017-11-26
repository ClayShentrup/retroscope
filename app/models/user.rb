class User < ApplicationRecord
  acts_as_token_authenticatable

  # Include default devise modules. Others available are:
  # :omniauthable
  devise(
    :confirmable,
    :database_authenticatable,
    :lockable,
    :recoverable,
    :trackable,
    :timeoutable ,
    :validatable,
  )
end
