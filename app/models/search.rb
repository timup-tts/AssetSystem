class Search
  def self.for(keyword)
    Inventory.where("name LIKE ?", "%#{keyword.downcase}%")
  end
end
