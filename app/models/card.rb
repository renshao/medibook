class Card < ActiveRecord::Base
  has_many :medications, :dependent => :delete_all

  accepts_nested_attributes_for :medications
end
