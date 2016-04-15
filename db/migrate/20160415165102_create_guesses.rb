class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.string :content, null: false
      t.references :card
      t.references :user
      # t.references :round

      t.timestamps null: false
    end
  end
end
