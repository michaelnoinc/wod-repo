class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.belongs_to :character
      t.text :name
      t.text :specialty
      t.integer :value

      t.timestamps null: false
    end
  end
end
