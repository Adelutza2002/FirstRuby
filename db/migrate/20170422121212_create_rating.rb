class CreateRating < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.references :idea, index: true
      t.string :value
      t.timestamps
    end
  end
end
