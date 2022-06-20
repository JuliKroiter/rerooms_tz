module NestedConcern
  extend ActiveSupport::Concern

  included do
    belongs_to :parent, optional: true, class_name: self.name, foreign_key: parent_foreign_key

    has_many :children, class_name: self.name, foreign_key: parent_foreign_key

    scope :roots, -> { where(parent_foreign_key => nil) }
  end

  module ClassMethods
    def parent_foreign_key
      "parent_#{self.name.tableize.singularize}_id"
    end
  end

  def parent_name
    parent.try(:name)
  end

  def has_child?
    children.present?
  end
end