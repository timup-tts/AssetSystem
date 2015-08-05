class Ticket < ActiveRecord::Base

  has_attached_file :attachment, :default_url => ''
  validates_attachment_content_type :attachment, content_type: /\Aimage\/.*\Z/
  validates_attachment_file_name :attachment, :matches => [/png\Z/, /jpe?g\Z/, /pdf\Z/]

end
