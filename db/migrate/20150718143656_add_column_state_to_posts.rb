class AddColumnStateToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :state, :string, default: "moderating" 
  end
end
