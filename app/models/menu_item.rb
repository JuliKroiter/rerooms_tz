class MenuItem < ApplicationRecord
  include NestedConcern
  include MenuItemStateConcern

  scope :total, -> { includes(:children, :parent) }
end
