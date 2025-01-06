class Order < ApplicationRecord
  include Discard::Model
  include AASM

  belongs_to :produkt
  validates :produkt, :quantity, :address, :phone_number, :email, :name ,presence: true

  aasm do
    state :created, initial: true
    state :sent, :delivered

    event :change_to_sent do
      transitions from: [:created], to: :sent

      after do
        OrderMailer.order_sent_email(self).deliver_now
      end
    end

    event :change_to_delivered do
      transitions from: [:sent], to: :delivered
    end

  end

end
