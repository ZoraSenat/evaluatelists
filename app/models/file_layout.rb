class FileLayout < ApplicationRecord
  # Direct associations

  has_many   :data_cards,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
