class RemoveAdImageFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :ad_image, :string
  end
end
