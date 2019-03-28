class DataToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :Comments , :user_id , :integer
    add_column :Comments , :post_id , :integer
    add_column :Comments , :content , :text
  end
end
