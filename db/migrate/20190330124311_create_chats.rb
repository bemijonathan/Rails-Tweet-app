class CreateChats < ActiveRecord::Migration[5.1]
  def change
    create_table :chats do |t|
      t.integer :user_id
      t.text :content
      t.integer :reciever_id

      t.timestamps
    end
  end
end
