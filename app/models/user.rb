class User < ApplicationRecord
  acts_as_token_authenticatable

  # Include default devise modules. Others available are:
  # :omniauthable
  devise(
    :confirmable,
    :database_authenticatable,
    :lockable,
    :recoverable,
    :registerable,
    :trackable,
    :timeoutable ,
    :validatable,
  )

  has_many(:action_items, foreign_key: :author_id, inverse_of: :author)
  has_many(:whiteboard_items)
end
