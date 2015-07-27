module ApplicationHelper
  def full_title(page_title = '')
    base_title = "Asset Inventory"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def available_at
  return super.to_datetime if super.respond_to?(:to_datetime)
  DateTime.parse(super)
end

end
