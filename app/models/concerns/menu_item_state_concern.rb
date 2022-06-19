module MenuItemStateConcern
  extend ActiveSupport::Concern

  included do
    state_machine :state, initial: :new do
      event :creation do
        transition blocked: :new
      end

      event :activation do
        transition new: :active
      end

      event :blockade do
        transition [:new, :active] => :blocked
      end
    end
  end
end