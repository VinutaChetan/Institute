class CreateStandards < ActiveRecord::Migration
  def change
    create_table :standards do |t|
    	t.string :standard
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
