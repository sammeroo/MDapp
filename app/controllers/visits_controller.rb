class VisitsController < ApplicationController
  before_action :signed_in_user
  before_filter :load_parent

  def index

  end

  def new

  end

  def create
	@patient = Patient.find_by(pid: params[:visit][:patient_id] )
	@visit = @patient.visits.build(visit_params)
	if @visit.save
	  flash[:success] = "Visit Added!"
	  redirect_to @patient
	else
	  flash[:alert] = "Visit could not be Added!"
	end
  end

  def destroy
  end

  private
	
	def visit_params
	  params.require(:visit).permit!
	end

	def load_parent
	  @patient = Patient.find(params[:patient_id])
	end
end