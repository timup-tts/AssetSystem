class DropComment < ActiveRecord::Migration
  def change
    def up
      drop_table :comments
    end

    def down
      create_table :comments do |t|
        t.text :body
        t.references :ticket, index: true, foreign_key: true

        t.timestamps null: false
      end
    end
  end
end
