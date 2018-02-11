class ChannelAssociation < ApplicationRecord
  # Direct associations

  belongs_to :channel

  belongs_to :data_card

  # Indirect associations

  # Validations

end
