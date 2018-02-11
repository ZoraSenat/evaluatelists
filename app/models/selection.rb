class Selection < ApplicationRecord
  # Direct associations

  belongs_to :select,
             :counter_cache => true

  belongs_to :data_card,
             :counter_cache => true

  # Indirect associations

  # Validations

end
