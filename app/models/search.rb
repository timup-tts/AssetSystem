class Search
  def self.for(keyword)
    Inventory.where("name LIKE ?", "%#{keyword.downcase}%") +
    Inventory.where("owner LIKE ?", "%#{keyword.downcase}%") +
    Contract.where("contract_number LIKE ?", "%#{keyword.downcase}%")
  end
end
