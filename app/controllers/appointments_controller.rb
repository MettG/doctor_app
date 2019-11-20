class AppointmentsController < ApplicationController

	def index
		@doctor = params[:doctor_id]
		if @doctor == nil
			@appointments = current_user.appointments
		else
			@appointments = Doctor.find(@doctor).appointments
		end
  end

  def show
  end

  def new
  end

  def edit
  end
end
