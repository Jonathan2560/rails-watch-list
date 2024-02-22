class AddImgUrlToLists < ActiveRecord::Migration[7.1]
  def change
    add_column :lists, :img_url, :string
  end
end
