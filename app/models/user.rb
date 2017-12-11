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

  has_many(
    :created_action_items,
    class_name: 'ActionItem',
    foreign_key: :creator_id,
    inverse_of: :creator,
  )
  has_many(:whiteboard_items)
end
