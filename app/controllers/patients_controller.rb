class PatientsController < ApplicationController
  before_action :signed_in_user, only: [:new]

  def new
	@patient = Patient.new
  end

  def create
	@patient = Patient.new(patient_params)
	if @patient.save
	  flash[:success] = "Patient succesfully added"
	  redirect_to current_user
	else
	  render 'new'
	end
  end


  private 

	def patient_params
	  params.require(:patient).permit(:name)
	end

end
