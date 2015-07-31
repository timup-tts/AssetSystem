class AddPaperClipSupport < ActiveRecord::Migration
  def change
    def up
      add_attachment :contracts, :contract_attach
    end

    def down
      remove_attachment :contracts, :contract_attach
    end
  end
end
