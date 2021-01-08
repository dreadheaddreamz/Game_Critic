class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :title
      t.integer :upvotes
      t.integer :downvotes
      t.string :description
      t.string :image_url
      t.date :date
    end
  end
end
