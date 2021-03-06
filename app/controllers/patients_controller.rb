class PatientsController < ApplicationController
  before_action :signed_in_user, only: [:new, :index]

  def new
	@patient = Patient.new
  end

  def show
	if (params[:pid].nil?)
	  @patient = Patient.find(params[:id])
	  @visits = @patient.visits.paginate(page: params[:page])
	  @visit = @patient.visits.build
	else
	  @patient = Patient.find_by(pid: params[:pid])
	  @visits = @patient.visits.paginate(page: params[:page])
	  @pdads = @patient.pdads
	  @new_visit = @patient.visits.first
	  @reports = @patient.reports
 	  @complaints = @patient.complaints.paginate(page: params[:page])
	end
  end

  def index
	 @search = Patient.search(params[:q])
     @patients = @search.result.paginate(page: params[:page])
  end

  def create
	@patient = Patient.new(patient_params)
	if @patient.save
	  flash[:success] = "Patient succesfully added"
	  redirect_to @patient
	else
	  render 'new'
	end
  end


  private 

	def patient_params
	  params.require(:patient).permit!
	end

end
