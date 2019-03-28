class UserIdForPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :Posts , :user_id ,:integer
  end
end
