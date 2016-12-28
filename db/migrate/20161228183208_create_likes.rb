class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.integer :article_id
      t.integer :comment_id
      t.string :name
      t.integer :rating

      t.timestamps
    end
  end
end
