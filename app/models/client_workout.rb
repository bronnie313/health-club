class ClientWorkout < ApplicationRecord
    validates :paid_amount, numericality: true
end
