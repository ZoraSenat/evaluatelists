class Selection < ApplicationRecord
  # Direct associations

  belongs_to :data_card,
             :counter_cache => true

  # Indirect associations

  # Validations

end
