class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string :deck_name, null: false, unique: true

      t.timestamps null: false
    end
  end
end
