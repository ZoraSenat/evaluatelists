class Comment < ApplicationRecord
  # Direct associations

  belongs_to :user

  belongs_to :data_card,
             :counter_cache => true

  # Indirect associations

  # Validations

end
