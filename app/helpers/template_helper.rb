module TemplateHelper
  def select_name
   CreatePeronOwner.select("id,name").collect { |i| [i[:name], i[:id]] }
  end

  def select_all
    binding.pry
    CreatePeronOwner.select("id,name")
  end
end
