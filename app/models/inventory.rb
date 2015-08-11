class Inventory < ActiveRecord::Base
  
  # scope :by_name, -> name { where(name: name) if status.present? }

  # Filter on inventories index.html
  def self.by_equipment(equipment)
    if equipment.present?
      where(equipment: equipment)
    else
      all
    end
  end

  # Filter on inventories index.html
  def self.by_status(status)
    if status.present?
      where(status: status)
    else
      all
    end
  end

end
