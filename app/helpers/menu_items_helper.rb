module MenuItemsHelper
  def menu_list(roots)
    li = String.new

    roots.each do |root|
      li << content_tag(:li, menu_name(root), class: "menu_li #{root.state}")
      li << menu_list(root.children) if root.has_child?
    end

    content_tag :ul, li.html_safe, class: 'menu_ul'
  end

  def menu_name(menu)
    "#{menu.name}(#{menu.children.length})"
  end
end
