class CreateConditions < ActiveRecord::Migration
  def change
    create_table :conditions do |t|
      t.belongs_to :character
      t.text :name
      t.text :description

      t.timestamps null: false
    end
  end
end
