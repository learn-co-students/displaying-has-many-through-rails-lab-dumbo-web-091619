class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def appointment_time
        self.appointment_datetime.strftime("%B %d, %Y at %k:%M")  
    end

    def patient_name
        Patient.find(self.patient_id).name
    end

    def doctor_name
        Doctor.find(self.doctor_id).name
    end
end
