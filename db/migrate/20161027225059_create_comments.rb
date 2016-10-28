class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :comment_text, limit: 150

      t.timestamps
    end
  end
end
