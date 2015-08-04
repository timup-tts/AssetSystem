class Contract < ActiveRecord::Base
  belongs_to :inventory

  has_attached_file :contract_attach, :default_url => ''
  validates_attachment_content_type :contract_attach, content_type: /\Aimage\/.*\Z/
  validates_attachment_file_name :contract_attach, :matches => [/png\Z/, /jpe?g\Z/, /pdf\Z/]

end
