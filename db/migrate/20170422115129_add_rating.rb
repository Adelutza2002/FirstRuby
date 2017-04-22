class AddRating < ActiveRecord::Migration[5.0]
  def change
    add_column :ideas, :rating, :string 
  end
end
