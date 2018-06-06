class CreatePosts< ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.string :img_url
      t.string :article_url
      t.interger :user_id
      t.timestamps
    end
  end
end
