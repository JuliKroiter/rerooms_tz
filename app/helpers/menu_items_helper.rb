module MenuItemsHelper
  def menu_list(roots)
    li = String.new

    roots.each do |root|
      li << content_tag(:li, root.name, class: "menu_li #{root.state}")
      if root.has_child?
        li << menu_list(root.child_menu_items)
      end
    end

    content_tag :ul, li.html_safe, class: 'menu_ul'
  end
end
