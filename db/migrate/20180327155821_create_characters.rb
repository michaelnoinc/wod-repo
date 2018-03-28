class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.references :user, index: true, foreign_key: true
      
      t.text :name
      t.text :age
      t.text :player
      t.text :virtue
      t.text :vice
      t.text :concept
      t.text :chronicle
      t.text :faction
      t.text :groupName
      
      t.integer :intelligence
      t.integer :wits
      t.integer :resolve
      t.integer :strength
      t.integer :dexterity
      t.integer :stamina
      t.integer :presence
      t.integer :manipulation
      t.integer :composure
      
      t.integer :size
      t.text :speed
      t.text :defense
      t.text :armor
      t.text :initiativeMod
      t.integer :beats
      t.text :experiences
      
      t.integer :maxHealth
      t.text :health
      
      t.integer :maxWillpower
      t.text :willpower
      
      t.text :aspirations, array: true, default: [4]
      
      t.text :inventory

      t.timestamps null: false
    end
  end
end
