module ApplicationHelper

  # Provides full title for each page_title

  def full_title(page_title = '')
    base_title = "AssetWire"
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

  # Bootstrap alert messages. Called in /shared/_alerts.html.erb
  def bootstrap_class_for(flash_type)
      case flash_type
        when "success"
          "alert-success"   # Green
        when "error"
          "alert-danger"    # Red
        when "alert"
          "alert-warning"   # Yellow
        when "notice"
          "alert-info"      # Blue
        else
          flash_type.to_s
      end
    end

end
