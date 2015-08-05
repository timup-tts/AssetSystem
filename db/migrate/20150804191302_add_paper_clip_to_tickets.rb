class AddPaperClipToTickets < ActiveRecord::Migration
    def up
    add_attachment :tickets, :attachment
  end

  def down
    remove_attachment :tickets, :attachment
  end
end
