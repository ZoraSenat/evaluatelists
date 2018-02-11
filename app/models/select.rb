class Select < ApplicationRecord
  # Direct associations

  has_many   :selections,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
