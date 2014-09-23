class ConsentFormsController < ApplicationController
  before_action :signed_in_user
  before_filter :load_parent

  def index

  end

  def new
  end

  def create
	@patient = Patient.find_by(pid: params[:consent_form][:patient_id] )
	@consent_form = @patient.consent_form.build(consent_form_params)
	if @consent_form.save
	  flash[:success] = "Consent Form Added!"
	  redirect_to @patient
	else
	  flash[:alert] = "Consent Form could not be Added!"
	end
  end

  def destroy
  end

  private
	
	def consent_form_params
	  params.require(:consent_form).permit!
	end

	def load_parent
	  @patient = Patient.find(params[:patient_id])
	end
end
