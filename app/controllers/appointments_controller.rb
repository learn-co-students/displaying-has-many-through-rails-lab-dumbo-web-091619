class AppointmentsController < ApplicationController

    def show
        @apt = Appointment.find(params[:id])
    end 
end
