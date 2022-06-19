class MenuItem < ApplicationRecord
  belongs_to :parent_menu_item, optional: true, class_name: 'MenuItem'

  has_many :child_menu_items, -> { where(active: true) }, class_name: 'MenuItem', foreign_key: 'parent_menu_item_id'

  scope :total, -> { includes(:child_menu_items) }
  scope :roots, -> { total.where(parent_menu_item_id: nil, active: true) }

  def parent_name
    parent_menu_item.try(:name)
  end

  def has_child?
    child_menu_items.present?
  end
end