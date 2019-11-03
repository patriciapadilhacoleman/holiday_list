class CreateGiftees < ActiveRecord::Migration[6.0]
  def change
    create_table :giftees do |t|
      t.string :f_name
      t.string :l_name
      t.string :budget

      t.timestamps
    end
  end
end
