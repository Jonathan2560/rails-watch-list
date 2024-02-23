class RemoveImgUrlFromLists < ActiveRecord::Migration[7.1]
  def change
    remove_column :lists, :img_url, :string
  end
end
