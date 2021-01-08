class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.content :string
      t.upvotes :integer
      t.downvotes :integer
      t.timestamps
    end
  end
end
