module BuildPermalinkIdFromTitle
  module_function

  def build_permalink_id_from_title(title, date=Date.current)
    "#{date}-#{self.format_title(title)}"
  end

  def format_title(title)
    title.downcase.gsub(/[^0-9A-Za-z\-_]/, '')
  end
end