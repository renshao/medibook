class Card < ActiveRecord::Base
  def medications_array
    medications.nil? ? [] : medications.split(',')
  end
end
