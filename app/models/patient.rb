class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctors, through: :appointments

    def num_of_appointments
        self.appointments.length
    end
end
