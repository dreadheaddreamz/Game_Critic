class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :upvotes, default: 0
      t.integer :downvotes, default: 0
      t.timestamps
    end
  end
end
