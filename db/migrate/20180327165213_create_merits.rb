class CreateMerits < ActiveRecord::Migration
  def change
    create_table :merits do |t|
      t.belongs_to :character
      t.text :name
      t.text :description
      t.integer :value

      t.timestamps null: false
    end
  end
end
