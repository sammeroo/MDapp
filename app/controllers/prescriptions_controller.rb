class PrescriptionsController < ApplicationController
  before_action :signed_in_user
  before_filter :load_parent

  def index

  end

  def new
  end

  def create
	@patient = Patient.find_by(pid: params[:prescription][:patient_id] )
	@prescription = @patient.prescription.build(prescription_params)
	if @prescription.save
	  flash[:success] = "Prescription Added!"
	  redirect_to @patient
	else
	  flash[:alert] = "Prescription could not be Added!"
	end
  end

  def destroy
  end

  private
	
	def prescription_params
	  params.require(:prescription).permit!
	end

	def load_parent
	  @patient = Patient.find(params[:patient_id])
	end
end
