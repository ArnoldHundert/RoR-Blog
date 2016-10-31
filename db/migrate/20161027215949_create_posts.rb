class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :post_text, limit: 150
      t.references :user_id

      t.timestamps
    end
  end
end
