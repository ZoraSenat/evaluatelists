class Tagging < ApplicationRecord
  # Direct associations

  belongs_to :tag,
             :counter_cache => true

  belongs_to :data_card

  # Indirect associations

  # Validations

end
