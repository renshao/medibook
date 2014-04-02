class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :facebook_id
      t.text :facebook_info
      t.text :facebook_raw_info

      t.timestamps
    end
  end
end
