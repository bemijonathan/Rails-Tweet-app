class AddImageAndTitleToPostMistake < ActiveRecord::Migration[5.1]
  def change
    add_column :Posts, :title , :string
    add_column :Posts, :imagename , :string
  end
end
