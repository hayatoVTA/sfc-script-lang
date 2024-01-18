class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :category
      t.text :content
      t.date :date
      t.string :author

      t.timestamps
    end
  end
end
