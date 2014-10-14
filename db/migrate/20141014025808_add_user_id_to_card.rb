class AddUserIdToCard < ActiveRecord::Migration
  def change
    change_table :cards, :bulk => true do |t|
      t.integer :user_id
    end
  end
end
