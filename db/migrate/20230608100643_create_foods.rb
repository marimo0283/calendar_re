class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string "morning"
      t.string "noon"
      t.string "night"
      t.text "memo"
      t.datetime "start_time"

      t.timestamps
    end
  end
end
