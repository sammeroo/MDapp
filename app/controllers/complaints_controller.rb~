class ComplaintsController < ApplicationController
  before_action :signed_in_user
  before_filter :load_parent

  def index

  end

  def new
  end

  def create
	@patient = Patient.find_by(pid: params[:complaint][:patient_id] )
	@complaint = @patient.complaints.build(complaint_params)
	if @complaint.save
	  flash[:success] = "Complaint Added!"
	  redirect_to @patient
	else
	  flash[:alert] = "Complaint could not be Added!"
	end
  end

  def destroy
  end

  private
	
	def visit_params
	  params.require(:complaint).permit!
	end

	def load_parent
	  @patient = Patient.find(params[:patient_id])
	end
end
