class CreateGifts < ActiveRecord::Migration[6.0]
  def change
    create_table :gifts do |t|
      t.string :name
      t.string :description
      t.float :price
      t.references :giftee, foreign_key: true

      t.timestamps
    end
  end
end
