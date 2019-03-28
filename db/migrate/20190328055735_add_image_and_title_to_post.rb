class AddImageAndTitleToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :Comments, :title , :string
    add_column :Comments, :imagename , :string
  end
end
