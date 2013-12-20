require 'bundler'
Bundler.require

set :database, "sqlite3:///blog.db"

class Post < ActiveRecord::Base

end