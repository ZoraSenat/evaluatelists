class Channel < ApplicationRecord
  # Direct associations

  has_many   :channel_associations,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
