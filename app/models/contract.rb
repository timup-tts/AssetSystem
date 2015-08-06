class Contract < ActiveRecord::Base
  belongs_to :inventory

  has_attached_file :contract_attach, :default_url => ''
  validates_attachment_content_type :contract_attach, content_type: /\Aimage\/.*\Z/
  validates_attachment_file_name :contract_attach, :matches => [/png\Z/, /jpe?g\Z/, /pdf\Z/]

  def self.by_type(type)
    if type.present?
      where(contract_type: type)
    else
      all
    end
  end

  def self.by_status(status)
    if status.present?
      where(status: status)
    else
      all
    end
  end

  def self.by_expiration(expiration)
    if expiration.present?
      where("end_date < ?", (Date.today + 60))
    else
      all
    end
  end

end
