class Contract < ActiveRecord::Base

  belongs_to :inventory

  has_attached_file :contract_attach
  validates_attachment_content_type :contract_attach, content_type: /\Aimage\/.*\Z/

end
