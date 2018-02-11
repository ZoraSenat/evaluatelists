class DataCard < ApplicationRecord
  # Direct associations

  belongs_to :user,
             :counter_cache => true

  has_many   :selections,
             :dependent => :destroy

  has_many   :channel_associations,
             :dependent => :destroy

  has_many   :comments,
             :dependent => :destroy

  has_many   :taggings,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
