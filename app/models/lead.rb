class Lead < ApplicationRecord
  belongs_to :user

  has_many :conversations, dependent: :destroy

  enum status: {
    prospecto: 0,
    interesado: 1,
    cliente: 2
    }
end
