class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :body
      t.references :user, foreign_key: true
      t.references :link, foreign_key: true
      t.integer :commentable_id
      t.string :commentable_type

      t.timestamps
    end
  end
end
