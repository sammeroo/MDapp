class ReportsController < ApplicationController
  before_action :signed_in_user
  before_filter :load_parent

  def new
  end

  def create
	@patient = Patient.find_by(pid: params[:report][:patient_id] )
	@report = @patient.report.build(report_params)
	if @report.save
	  flash[:success] = "Report Added!"
	  redirect_to @patient
	else
	  flash[:alert] = "Report could not be Added!"
	end
  end

  def destroy
  end


  private
	
	def report_params
	  params.require(:report).permit!
	end

	def load_parent
	  @patient = Patient.find(params[:patient_id])
	end
end
