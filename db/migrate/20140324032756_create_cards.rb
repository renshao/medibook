class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :title
      t.string :symptoms
      t.string :medications
      t.date :date
      t.string :doctor
      t.string :color

      t.timestamps
    end
  end
end
