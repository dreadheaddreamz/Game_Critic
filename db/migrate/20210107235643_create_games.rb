class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :title
      t.integer :upvotes, default: 0
      t.integer :downvotes, default: 0
      t.string :description
      t.string :image_url
      t.string :date
    end
  end
end
