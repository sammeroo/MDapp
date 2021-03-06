class VisitsController < ApplicationController
  before_action :signed_in_user
  before_filter :load_parent

  def index
  end

  def new
  end

  def show
  end

  def edit
	@visit = @patient.visits.first
  end

  def update
    if @patient.visits.first.update_attributes(visit_params)
      flash[:success] = "Vitals updated"
	  redirect_to @patient
    else
      render 'edit'
    end
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
