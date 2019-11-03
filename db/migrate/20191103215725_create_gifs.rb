class CreateGifs < ActiveRecord::Migration[6.0]
  def change
    create_table :gifs do |t|
      t.string :name
      t.string :description
      t.string :price
      t.references :giftee, foreign_key: true

      t.timestamps
    end
  end
end
