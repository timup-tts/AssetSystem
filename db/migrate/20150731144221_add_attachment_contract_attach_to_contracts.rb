class AddAttachmentContractAttachToContracts < ActiveRecord::Migration
  def self.up
    change_table :contracts do |t|
      t.attachment :contract_attach
    end
  end

  def self.down
    remove_attachment :contracts, :contract_attach
  end
end
