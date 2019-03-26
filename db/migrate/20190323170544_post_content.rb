class PostContent < ActiveRecord::Migration[5.1]
  def change
    add_column :Posts , :content , :string
  end
end
