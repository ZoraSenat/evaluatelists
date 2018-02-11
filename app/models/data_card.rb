class DataCard < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :dependent => :destroy

  has_many   :taggings,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
