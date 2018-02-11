class FileLayout < ApplicationRecord
  # Direct associations

  has_many   :data_cards,
             :dependent => :nullify

  # Indirect associations

  has_many   :users,
             :through => :data_cards,
             :source => :user

  # Validations

end
