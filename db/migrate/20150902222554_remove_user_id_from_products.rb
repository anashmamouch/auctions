class RemoveUserIdFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :user_id_id, :integer
  end
end
