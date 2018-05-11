module LoadCustomizationsHelper
  module_function

  def engine_names
    Dir.entries(File.join(Dir.pwd, 'engines-customization')).reject {|name| name =~ %r{\.{1,2}}}
  end

  def layout_path
    # Just assuming only one custom engine for now - so picking the first
    "#{engine_names.first}/layouts/application"
  end
end