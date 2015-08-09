class ChangeUserColumnOnComments < ActiveRecord::Migration
  def change
    change_column :comments, :user, :integer
  end
end
