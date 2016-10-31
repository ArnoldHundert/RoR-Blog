class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :comment_text, limit: 150
      t.references :post_id

      t.timestamps
    end
  end
end
