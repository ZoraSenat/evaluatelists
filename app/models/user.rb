class User < ApplicationRecord
  # Direct associations

  has_many   :rfqs,
             :dependent => :destroy

  has_many   :comments,
             :dependent => :destroy

  has_many   :data_cards,
             :dependent => :nullify

  # Indirect associations

  has_many   :taggings,
             :through => :data_cards,
             :source => :taggings

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
