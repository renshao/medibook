class Card < ActiveRecord::Base
  def medications_array
    medications.split(',')
  end
end
