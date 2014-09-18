class PdadsController < ApplicationController
  before_action :signed_in_user
  before_filter :load_parent

  def index

  end

  def new
  end

  def create
	@patient = Patient.find_by(pid: params[:pdad][:patient_id] )
	@pdad = @patient.pdad.build(pdad_params)
	if @pdad.save
	  flash[:success] = "PDAD Added!"
	  redirect_to @patient
	else
	  flash[:alert] = "PDAD could not be Added!"
	end
  end

  def destroy
  end

  private
	
	def pdad_params
	  params.require(:pdad).permit!
	end

	def load_parent
	  @patient = Patient.find(params[:patient_id])
	end
end
