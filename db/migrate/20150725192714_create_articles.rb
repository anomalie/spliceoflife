class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :body
      t.string :picture
      t.string :audio
      t.references :user

      t.timestamps null: false
    end
  end
end
