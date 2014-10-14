class Card < ActiveRecord::Base
  belongs_to :user
  has_many :medications, :dependent => :delete_all

  accepts_nested_attributes_for :medications

  scope :for_user, ->(user) { where(user_id: user.id) }
end
