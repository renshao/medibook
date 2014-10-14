class RemoveMedicationModel < ActiveRecord::Migration
  def change
    change_table :cards, :bulk => true do |t|
      t.text :medications
    end
  end

  drop_table :medications
end
