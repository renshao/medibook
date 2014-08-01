class AddMedicationModel < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.string :name
      t.belongs_to :card
    end

    remove_column :cards, :medications
  end
end
