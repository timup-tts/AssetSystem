class DropComments < ActiveRecord::Migration
  def change
    def up
      drop_table :comments
    end
  end
end
