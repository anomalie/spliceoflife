class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :body
      t.string :picture
      t.string :audio
      t.reference :user

      t.timestamps null: false
    end
  end
end
