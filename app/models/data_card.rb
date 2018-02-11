class DataCard < ApplicationRecord
  # Direct associations

  has_many   :channel_associations,
             :dependent => :destroy

  has_many   :comments,
             :dependent => :destroy

  has_many   :taggings,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
