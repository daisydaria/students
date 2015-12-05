class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :form, :null => false
      t.date :period, :null => false

      t.timestamps null: false
    end
  end
end
