module LoadCustomizationsHelper
  module_function

  def engine_names
    Dir.entries(File.join(Dir.pwd, 'engines-customization')).reject {|name| name =~ %r{\.{1,2}}}
  end
end