class Ticket < ActiveRecord::Base

  has_many :comments

  has_attached_file :attachment, :default_url => ''
  validates_attachment_content_type :attachment, content_type: /\Aimage\/.*\Z/
  validates_attachment_file_name :attachment, :matches => [/png\Z/, /jpe?g\Z/, /pdf\Z/]

  def self.by_severity(severity)
    if severity.present?
      where(severity: severity)
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

end
