class RemoveUserColumnOnComments < ActiveRecord::Migration
  def change
    remove_column :comments, :user, :integer
  end
end
