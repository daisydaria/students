class CreateDisciplines < ActiveRecord::Migration
  def change
    create_table :disciplines do |t|
      t.string :title, :null => false
      t.text :type, :null => false

      t.timestamps null: false
    end
  end
end
