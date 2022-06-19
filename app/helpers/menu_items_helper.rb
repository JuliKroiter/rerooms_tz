module MenuItemsHelper
  def menu_list(roots)
    li = String.new

    roots.each do |root|
      li << content_tag(:li, root.name)
      if root.has_child?
        li << menu_list(root.child_menu_items)
      end
    end

    content_tag :ul, li.html_safe
  end
end
