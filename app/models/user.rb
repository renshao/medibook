class User < ActiveRecord::Base
  serialize :facebook_info
  serialize :facebook_raw_info
end
