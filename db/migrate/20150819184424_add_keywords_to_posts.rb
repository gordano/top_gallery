class AddKeywordsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :keywords, :text
    add_index :posts, :keywords
  end
end
