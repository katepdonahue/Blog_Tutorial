require 'bundler'
Bundler.require

set :database, "sqlite3:///blog.db"

class Post < ActiveRecord::Base
  def up
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.timestamps
    end
    Post.create(title: "My first post", body: "And this is the posts content.")
    Post.create(title: "How to lasso your dog",
                 body: "1. Tie a rope into a lasso. 2. Swing it over dog's torso, 3. Gently pull.")
    Post.create(title: "Top 10 laundromats in my neighborhood", body: "1..10: There are none.")
  end

  def down
    drop_table :posts
  end

end