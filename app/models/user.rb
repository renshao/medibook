class User < ActiveRecord::Base
  serialize :facebook_info
  serialize :facebook_raw_info

  has_many :cards, :dependent => :delete_all
end
