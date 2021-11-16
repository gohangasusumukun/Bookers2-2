class ChangeDatatypeBodyOfBooks < ActiveRecord::Migration[5.2]
  def change
    change_column :books, :body, :text
  end
end
